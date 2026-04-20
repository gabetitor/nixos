{ ...}: {
  programs.easyeffects = {
    enable = true;
    preset = "HE6SEV2";
    extraPresets = {
      HE6SEV2 = {
        "output" = {
        "blocklist" = [];
        "equalizer#0" = {
            "balance" = 0.0;
            "bypass" = false;
            "input-gain" = -5.72;
            "left" = {
                "band0" = {
                    "frequency" = 105.0;
                    "gain" = 4.900000095367432;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.6666666865348816;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Lo-shelf";
                    "width" = 4.0;
                };
                "band1" = {
                    "frequency" = 20.0;
                    "gain" = 0.800000011920929;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 2.0799999237060547;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band2" = {
                    "frequency" = 238.60000610351563;
                    "gain" = -1.2999999523162842;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.25999999046325684;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band3" = {
                    "frequency" = 955.0999755859375;
                    "gain" = -1.2000000476837158;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.0999999046325684;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band4" = {
                    "frequency" = 1478.9000244140625;
                    "gain" = 1.600000023841858;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.190000057220459;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band5" = {
                    "frequency" = 1982.699951171875;
                    "gain" = 5.699999809265137;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 1.8700000047683716;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band6" = {
                    "frequency" = 3502.800048828125;
                    "gain" = -3.700000047683716;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 1.149999976158142;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band7" = {
                    "frequency" = 9148.7998046875;
                    "gain" = 4.5;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 2.0;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band8" = {
                    "frequency" = 10000.0;
                    "gain" = 1.0;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.9000000953674316;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band9" = {
                    "frequency" = 10000.0;
                    "gain" = -4.099999904632568;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.6666666865348816;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Hi-shelf";
                    "width" = 4.0;
                };
            };
            "mode" = "FIR";
            "num-bands" = 10;
            "output-gain" = 0.0;
            "pitch-left" = 0.0;
            "pitch-right" = 0.0;
            "right" = {
                "band0" = {
                    "frequency" = 105.0;
                    "gain" = 4.900000095367432;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.6666666865348816;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Lo-shelf";
                    "width" = 4.0;
                };
                "band1" = {
                    "frequency" = 20.0;
                    "gain" = 0.800000011920929;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 2.0799999237060547;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band2" = {
                    "frequency" = 238.60000610351563;
                    "gain" = -1.2999999523162842;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.25999999046325684;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band3" = {
                    "frequency" = 955.0999755859375;
                    "gain" = -1.2000000476837158;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.0999999046325684;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band4" = {
                    "frequency" = 1478.9000244140625;
                    "gain" = 1.600000023841858;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.190000057220459;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band5" = {
                    "frequency" = 1982.699951171875;
                    "gain" = 5.699999809265137;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 1.8700000047683716;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band6" = {
                    "frequency" = 3502.800048828125;
                    "gain" = -3.700000047683716;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 1.149999976158142;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band7" = {
                    "frequency" = 9148.7998046875;
                    "gain" = 4.5;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 2.0;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band8" = {
                    "frequency" = 10000.0;
                    "gain" = 1.0;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 3.9000000953674316;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Bell";
                    "width" = 4.0;
                };
                "band9" = {
                    "frequency" = 10000.0;
                    "gain" = -4.099999904632568;
                    "mode" = "APO (DR)";
                    "mute" = false;
                    "q" = 0.6666666865348816;
                    "slope" = "x1";
                    "solo" = false;
                    "type" = "Hi-shelf";
                    "width" = 4.0;
                };
            };
            "split-channels" = false;
          };
          "plugins_order" = [
             "equalizer#0"
          ];
        }
      }
    }
  }
}