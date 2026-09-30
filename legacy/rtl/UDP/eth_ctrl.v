module eth_ctrl(
    input                       clk       		    ,    //ʱ��
    input                       rst_n     		    ,    //ϵͳ��λ�źţ��͵�ƽ��Ч
    //ARP��ض˿��ź�
    input                       arp_rx_done   	    ,    //ARP��������ź�
    input                       arp_rx_type   	    ,    //ARP�������� 0:����  1:Ӧ��
    output  reg                 arp_tx_en	 	    ,    //ARP����ʹ���ź�
    output                      arp_tx_type   	    ,    //ARP�������� 0:����  1:Ӧ��
    input                       arp_tx_done   	    ,    //ARP��������ź�
    input                       arp_gmii_tx_en	    ,    //ARP GMII���������Ч�ź�
    input     [7:0]             arp_gmii_txd  	    ,    //ARP GMII�������
    //UDP��ض˿��ź�
    input                       udp_tx_start_en     ,	 //UDP��ʼ�����ź�
    input                       udp_tx_done         ,	 //UDP��������ź�
    input                       udp_gmii_tx_en      ,	 //UDP GMII���������Ч�ź�
    input     [7:0]             udp_gmii_txd        ,	 //UDP GMII�������
	//UDP fifo�ӿ��ź�
	input	  [7:0]             udp_rec_data	    ,  	 //UDP���յ�����
	input			            udp_rec_en		    ,  	 //UDP���յ�����ʹ���ź�
	output	   [7:0]            udp_tx_data		    ,  	 //UDP����������
	//fifo�ӿ��ź�
	input	   [7:0]            tx_data	    	    ,	 //�����͵�����
	output reg		            rec_en	    	    ,    //���յ�����ʹ���ź�
	output reg [7:0]            rec_data		    ,    //���յ�����
    //GMII��������
    output reg                  gmii_tx_en		    ,    //GMII���������Ч�ź�
    output reg [7:0]            gmii_txd        	 	 //GMII�������
    );

//reg define
reg [1:0]  protocol_sw; 	//Э���л��ź�
reg        udp_tx_busy; 	//UDP���ڷ������ݱ�־�ź�
reg        arp_rx_flag; 	//���յ�ARP�����źŵı�־
reg		   udp_tx_req_d0;   //UDP�����������źżĴ���

//*****************************************************
//**                    main code
//*****************************************************

assign arp_tx_type = 1'b1;   									//ARP�������͹̶�ΪARPӦ��
assign udp_tx_data  = udp_tx_req_d0  ? tx_data : 8'd0;			//UDP����������ѡ��

//��������ʹ���ź���������ݵ��ж�
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		rec_en	  <= 1'd0;
        rec_data  <= 1'd0;
	end
	else if(udp_rec_en) begin
		rec_en	  <= udp_rec_en;
        rec_data  <= udp_rec_data;
	end
	else begin
		rec_en	  <= 1'd0;
        rec_data  <= rec_data;
	end
end

//Э����л�
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		gmii_tx_en <= 1'd0;
		gmii_txd   <= 8'd0;
	end
	else begin
		case(protocol_sw)
			2'b00:	begin
				gmii_tx_en <= arp_gmii_tx_en;
				gmii_txd   <= arp_gmii_txd;
			end
			2'b01: begin
				gmii_tx_en <= udp_gmii_tx_en;
				gmii_txd   <= udp_gmii_txd  ;
			end
			default:begin
				gmii_tx_en <= 0;
				gmii_txd   <= 0;
			end
		endcase
	end
end

//����UDP����æ�ź�
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        udp_tx_busy <= 1'b0;
    else if(udp_tx_start_en)
        udp_tx_busy <= 1'b1;
    else if(udp_tx_done)
        udp_tx_busy <= 1'b0;
	else
        udp_tx_busy <= udp_tx_busy;
end

//���ƽ��յ�ARP�����źŵı�־
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        arp_rx_flag <= 1'b0;
    else if(arp_rx_done && (arp_rx_type == 1'b0))
        arp_rx_flag <= 1'b1;
    else
        arp_rx_flag <= 1'b0;
end

//����protocol_sw��arp_tx_en�ź�
always @(posedge clk or negedge rst_n) begin   // ������Э�鿪��
    if(!rst_n) begin
        protocol_sw <= 2'b0;
        arp_tx_en <= 1'b0;
    end
    else begin
        arp_tx_en <= 1'b0;
		if (udp_tx_start_en) begin  //���������udp��ʼ��
			protocol_sw <= 2'b01;
		end
        else if((arp_rx_flag && (udp_tx_busy == 1'b0)) || (arp_rx_flag)) begin   // ������ʵ��һ�����Ͻ���arp����һ����ⷽʽ
            protocol_sw <= 2'b0;            // ���udpû�з� ����rx�յ�����arp�� �Ϳ�ʼarp����ģʽ
            arp_tx_en <= 1'b1;
        end
		else ;
    end
end

endmodule
