/* Generated by Amaranth Yosys 0.40 (PyPI ver 0.40.0.0.post97, git sha1 a1bb0255d) */

(* top =  1  *)
(* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:185" *)
(* generator = "Amaranth" *)
module top(clk, rst, s_output, s_input);
  reg \$auto$verilog_backend.cc:2352:dump_module$1  = 0;
  wire \$1 ;
  wire \$10 ;
  wire \$11 ;
  wire \$12 ;
  wire \$13 ;
  wire \$14 ;
  wire \$15 ;
  wire \$16 ;
  wire \$17 ;
  wire \$18 ;
  wire \$19 ;
  wire \$2 ;
  wire \$20 ;
  wire \$21 ;
  wire \$22 ;
  wire \$23 ;
  wire \$24 ;
  wire \$25 ;
  wire \$26 ;
  wire \$27 ;
  wire \$28 ;
  wire \$29 ;
  wire \$3 ;
  wire \$30 ;
  wire \$31 ;
  wire \$32 ;
  wire \$33 ;
  wire \$34 ;
  wire \$35 ;
  wire \$36 ;
  wire \$37 ;
  wire \$38 ;
  wire \$39 ;
  wire \$4 ;
  wire \$40 ;
  wire \$41 ;
  wire \$42 ;
  wire \$43 ;
  wire \$44 ;
  wire \$45 ;
  wire \$46 ;
  wire \$47 ;
  wire \$48 ;
  wire \$49 ;
  wire \$5 ;
  wire \$50 ;
  wire \$51 ;
  wire \$52 ;
  wire \$53 ;
  wire \$54 ;
  wire \$55 ;
  wire \$56 ;
  wire \$57 ;
  wire \$58 ;
  wire \$59 ;
  wire \$6 ;
  wire \$60 ;
  wire \$61 ;
  wire \$62 ;
  wire \$63 ;
  wire \$64 ;
  reg [24:0] \$65 ;
  wire \$7 ;
  wire \$8 ;
  wire \$9 ;
  (* src = "/home/nicolas/anaconda3/lib/python3.11/site-packages/amaranth/hdl/_ir.py:283" *)
  input clk;
  wire clk;
  (* src = "/home/nicolas/anaconda3/lib/python3.11/site-packages/amaranth/hdl/_ir.py:283" *)
  input rst;
  wire rst;
  (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:189" *)
  wire \rst$5 ;
  (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:187" *)
  reg [24:0] s_image = 25'h0000000;
  (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:186" *)
  input [7:0] s_input;
  wire [7:0] s_input;
  (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:188" *)
  output [7:0] s_output;
  reg [7:0] s_output;
  assign \$35  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[21];
  assign \$36  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$37  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[12];
  assign \$38  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$39  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[21];
  assign \$40  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[7];
  assign \$41  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[17];
  assign \$42  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[12];
  assign \$43  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[18];
  assign \$44  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[7];
  assign \$45  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[7];
  assign \$46  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[9];
  assign \$47  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[8];
  assign \$48  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$49  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$50  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$51  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[12];
  assign \$52  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$53  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[18];
  assign \$54  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$55  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[23];
  assign \$56  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$57  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$58  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$59  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[16];
  assign \$60  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[17];
  assign \$61  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$62  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[3];
  assign \$63  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[11];
  assign \$64  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:187" *)
  always @(posedge clk)
    s_image <= \$65 ;
  assign \$1  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[5];
  assign \$2  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[1];
  assign \$3  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[2];
  assign \$4  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$5  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[20];
  assign \$6  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$7  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[22];
  assign \$8  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[0];
  assign \$9  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$10  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[16];
  assign \$11  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[16];
  assign \$12  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[2];
  assign \$13  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[12];
  assign \$14  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[21];
  assign \$15  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[16];
  assign \$16  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$17  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[21];
  assign \$18  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[12];
  assign \$19  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[17];
  assign \$20  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[7];
  assign \$21  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[13];
  assign \$22  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[1];
  assign \$23  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$24  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[11];
  assign \$25  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[2];
  assign \$26  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$27  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[0];
  assign \$28  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[11];
  assign \$29  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[10];
  assign \$30  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$31  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[21];
  assign \$32  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[6];
  assign \$33  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  assign \$34  = ~ (* src = "/home/nicolas/Documents/tt/tt08-decisiontree-asic/src/amaranth/hdlTree.py:23" *) s_image[15];
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$65  = s_image;
    casez (s_input[2:0])
      3'h0:
          \$65 [4:0] = s_input[7:3];
      3'h1:
          \$65 [9:5] = s_input[7:3];
      3'h2:
          \$65 [14:10] = s_input[7:3];
      3'h3:
          \$65 [19:15] = s_input[7:3];
      3'h4:
          \$65 [24:20] = s_input[7:3];
    endcase
    if (rst) begin
      \$65  = 25'h0000000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    (* full_case = 32'd1 *)
    if (\$1 ) begin
      (* full_case = 32'd1 *)
      if (\$2 ) begin
        (* full_case = 32'd1 *)
        if (\$3 ) begin
          s_output = 8'h03;
        end else begin
          s_output = 8'h04;
        end
      end else begin
        (* full_case = 32'd1 *)
        if (\$4 ) begin
          (* full_case = 32'd1 *)
          if (\$5 ) begin
            (* full_case = 32'd1 *)
            if (\$6 ) begin
              (* full_case = 32'd1 *)
              if (\$7 ) begin
                s_output = 8'h07;
              end else begin
                s_output = 8'h03;
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$8 ) begin
                s_output = 8'h05;
              end else begin
                (* full_case = 32'd1 *)
                if (\$9 ) begin
                  (* full_case = 32'd1 *)
                  if (\$10 ) begin
                    s_output = 8'h02;
                  end else begin
                    s_output = 8'h01;
                  end
                end else begin
                  (* full_case = 32'd1 *)
                  if (\$11 ) begin
                    (* full_case = 32'd1 *)
                    if (\$12 ) begin
                      (* full_case = 32'd1 *)
                      if (\$13 ) begin
                        s_output = 8'h03;
                      end else begin
                        s_output = 8'h01;
                      end
                    end else begin
                      s_output = 8'h03;
                    end
                  end else begin
                    s_output = 8'h07;
                  end
                end
              end
            end
          end else begin
            (* full_case = 32'd1 *)
            if (\$14 ) begin
              s_output = 8'h07;
            end else begin
              (* full_case = 32'd1 *)
              if (\$15 ) begin
                s_output = 8'h03;
              end else begin
                (* full_case = 32'd1 *)
                if (\$16 ) begin
                  s_output = 8'h01;
                end else begin
                  s_output = 8'h03;
                end
              end
            end
          end
        end else begin
          (* full_case = 32'd1 *)
          if (\$17 ) begin
            (* full_case = 32'd1 *)
            if (\$18 ) begin
              (* full_case = 32'd1 *)
              if (\$19 ) begin
                s_output = 8'h07;
              end else begin
                (* full_case = 32'd1 *)
                if (\$20 ) begin
                  s_output = 8'h01;
                end else begin
                  s_output = 8'h02;
                end
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$21 ) begin
                s_output = 8'h03;
              end else begin
                s_output = 8'h08;
              end
            end
          end else begin
            s_output = 8'h02;
          end
        end
      end
    end else begin
      (* full_case = 32'd1 *)
      if (\$22 ) begin
        (* full_case = 32'd1 *)
        if (\$23 ) begin
          (* full_case = 32'd1 *)
          if (\$24 ) begin
            s_output = 8'h01;
          end else begin
            s_output = 8'h04;
          end
        end else begin
          (* full_case = 32'd1 *)
          if (\$25 ) begin
            (* full_case = 32'd1 *)
            if (\$26 ) begin
              s_output = 8'h04;
            end else begin
              s_output = 8'h06;
            end
          end else begin
            s_output = 8'h04;
          end
        end
      end else begin
        (* full_case = 32'd1 *)
        if (\$27 ) begin
          (* full_case = 32'd1 *)
          if (\$28 ) begin
            (* full_case = 32'd1 *)
            if (\$29 ) begin
              (* full_case = 32'd1 *)
              if (\$30 ) begin
                (* full_case = 32'd1 *)
                if (\$31 ) begin
                  s_output = 8'h01;
                end else begin
                  s_output = 8'h02;
                end
              end else begin
                s_output = 8'h03;
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$32 ) begin
                s_output = 8'h00;
              end else begin
                (* full_case = 32'd1 *)
                if (\$33 ) begin
                  s_output = 8'h06;
                end else begin
                  s_output = 8'h02;
                end
              end
            end
          end else begin
            (* full_case = 32'd1 *)
            if (\$34 ) begin
              (* full_case = 32'd1 *)
              if (\$35 ) begin
                (* full_case = 32'd1 *)
                if (\$36 ) begin
                  (* full_case = 32'd1 *)
                  if (\$37 ) begin
                    s_output = 8'h00;
                  end else begin
                    s_output = 8'h09;
                  end
                end else begin
                  s_output = 8'h04;
                end
              end else begin
                s_output = 8'h09;
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$38 ) begin
                (* full_case = 32'd1 *)
                if (\$39 ) begin
                  (* full_case = 32'd1 *)
                  if (\$40 ) begin
                    s_output = 8'h01;
                  end else begin
                    s_output = 8'h09;
                  end
                end else begin
                  (* full_case = 32'd1 *)
                  if (\$41 ) begin
                    s_output = 8'h08;
                  end else begin
                    (* full_case = 32'd1 *)
                    if (\$42 ) begin
                      s_output = 8'h08;
                    end else begin
                      s_output = 8'h03;
                    end
                  end
                end
              end else begin
                (* full_case = 32'd1 *)
                if (\$43 ) begin
                  (* full_case = 32'd1 *)
                  if (\$44 ) begin
                    s_output = 8'h06;
                  end else begin
                    s_output = 8'h08;
                  end
                end else begin
                  s_output = 8'h00;
                end
              end
            end
          end
        end else begin
          (* full_case = 32'd1 *)
          if (\$45 ) begin
            (* full_case = 32'd1 *)
            if (\$46 ) begin
              (* full_case = 32'd1 *)
              if (\$47 ) begin
                (* full_case = 32'd1 *)
                if (\$48 ) begin
                  (* full_case = 32'd1 *)
                  if (\$49 ) begin
                    s_output = 8'h05;
                  end else begin
                    s_output = 8'h09;
                  end
                end else begin
                  (* full_case = 32'd1 *)
                  if (\$50 ) begin
                    (* full_case = 32'd1 *)
                    if (\$51 ) begin
                      (* full_case = 32'd1 *)
                      if (\$52 ) begin
                        s_output = 8'h05;
                      end else begin
                        s_output = 8'h09;
                      end
                    end else begin
                      s_output = 8'h05;
                    end
                  end else begin
                    s_output = 8'h06;
                  end
                end
              end else begin
                s_output = 8'h00;
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$53 ) begin
                (* full_case = 32'd1 *)
                if (\$54 ) begin
                  s_output = 8'h09;
                end else begin
                  s_output = 8'h08;
                end
              end else begin
                (* full_case = 32'd1 *)
                if (\$55 ) begin
                  s_output = 8'h07;
                end else begin
                  s_output = 8'h03;
                end
              end
            end
          end else begin
            (* full_case = 32'd1 *)
            if (\$56 ) begin
              (* full_case = 32'd1 *)
              if (\$57 ) begin
                s_output = 8'h09;
              end else begin
                (* full_case = 32'd1 *)
                if (\$58 ) begin
                  s_output = 8'h09;
                end else begin
                  s_output = 8'h05;
                end
              end
            end else begin
              (* full_case = 32'd1 *)
              if (\$59 ) begin
                (* full_case = 32'd1 *)
                if (\$60 ) begin
                  (* full_case = 32'd1 *)
                  if (\$61 ) begin
                    s_output = 8'h00;
                  end else begin
                    s_output = 8'h08;
                  end
                end else begin
                  s_output = 8'h09;
                end
              end else begin
                (* full_case = 32'd1 *)
                if (\$62 ) begin
                  (* full_case = 32'd1 *)
                  if (\$63 ) begin
                    (* full_case = 32'd1 *)
                    if (\$64 ) begin
                      s_output = 8'h00;
                    end else begin
                      s_output = 8'h08;
                    end
                  end else begin
                    s_output = 8'h08;
                  end
                end else begin
                  s_output = 8'h00;
                end
              end
            end
          end
        end
      end
    end
  end
  assign \rst$5  = 1'h0;
endmodule
