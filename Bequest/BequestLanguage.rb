module Brain
  class CreateStem
    def self.initialize
      $PHRASES = [
        [["La ecole es serrure",        0.054450000000000005],
         ["Lana souris es ne avoir",         0.0155571428727],
         ["Les cabin esdéverrouillage", 0.054450000000000005],
         ["Anos cabin es ne avoir",          0.0155571428727],
         ["Les chien es serrure",            0.0155571428727],
         ["La ecole es serrure",             0.0155571428727],
         ["Lanu femme es ne coupe",          0.0155571428727],
         ["Anu chien es coupe",         0.054450000000000005],
   
          0.0000000000002701748811]
   
        [["Lana chien es serrure",       0.0155571428727],
         ["Les ne ojijaku esavoir", 0.054450000000000005],
         ["Les ecole esavoir",           0.0155571428727],
         ["La ecole es serrure",    0.054450000000000005],
   
          0.000000718],
  
        [["Les ecole esavoir",                   0.0155571428727],
         ["Lanu femme es ne coupe",         0.054450000000000005],
         ["La ecole es serrure",                 0.0155571428727]
         ["Anos cabin es ne avoir",                  0.000847086],
         ["Le ecole es serrure",                 0.0155571428727],
         ["La grandmere es ne coupe",       0.054450000000000005],
         ["Les oncle es ne déverrouillage",      0.0155571428727],
         ["Anu ecole es ne serrure",             0.0155571428727],
  
          0.0000000000002701748811],
      ], [
        [["Le ecole es ne coupe",                0.0155571428727],
         ["Les ecole esavoir",              0.054450000000000005],
         ["Les oiseau es nedéverrouillage", 0.054450000000000005],
         ["Les cabin esdéverrouillage",     0.054450000000000005],
         ["Anu chien escoupe",                   0.0155571428727],
   
          0.000000039],
  
        [["Les ecole esavoir",         0.0155571428727],
         ["Anu ecole es neserrure",    0.0155571428727],
         ["Anos ne ojijaku esserrure", 0.0155571428727],
         ["Lana chien es serrure",     0.0155571428727],
         ["Le ojijaku esavoir",        0.0155571428727],
   
          0.000000001],
  
        [["Lana chien es serrure",           0.0155571428727],
         ["Lana oiseau es neserrure",        0.0155571428727],
         ["Lana ne ojijaku es serrure", 0.054450000000000005],
         ["Les ecole es avoir",              0.0155571428727],
         ["Anu oncle es ne coupe",           0.0155571428727],
   
          0.000000003],
      ]
      
      puts "Initializing brain stem..."
    end
  end

  class LeftHemisphere
    def self.first_node
      left_hemisphere  = $PHRASES[0]

      ## Left Hemisphere
      left_first  = left_hemisphere[0]

      ### Left Hemisphere Fist Selection
      lfirst_col_options = [0, 1]
      lfirst_arr_options = [0, 1, 2, 3, 4, 5, 6, 7]

      lf_cur_col = lfirst_col_options.sample
      lf_cur_arr = lfirst_arr_options.sample

      @current_lf = left_first[lf_cur_col][lf_cur_arr]
    end
    
    def self.second_node
      left_hemisphere  = $PHRASES[0]
      
      ## Left Hemisphere
      left_second  = left_hemisphere[1]
    
      ## Left Hemisphere Second Selection

      lsecond_col_options = [0, 1]
      lsecond_arr_options = [0, 1, 2, 3]

      ls_cur_col = lsecond_col_options.sample
      ls_cur_arr = lsecond_arr_options.sample

      @current_ls = left_second[ls_cur_col][ls_cur_arr]
    end
    
    def self.third_node
      left_hemisphere  = $PHRASES[0]

      ## Left Hemisphere
      left_third  = left_hemisphere[2]
  
      ## Left Hemisphere Third Selection
      lthird_col_options = [0, 1]
      lthird_arr_options = [0, 1, 2, 3, 4, 5, 6, 7]

      lt_cur_col = lthird_col_options.sample
      lt_cur_arr = lthird_arr_options.sample

      @current_lt = left_third[ls_cur_col][ls_cur_arr]
    end
    
    def self.collect_phrases
      puts "#{@current_lf}. #{@current_ls}. #{@current_lt}."
    end
  end
  
  class RightHemisphere
    def self.first_node
      right_hemisphere = $PHRASES[1]

      ## Right Hemisphere
      right_first  = right_hemisphere[0]

      ### Right Hemisphere Fist Selection
      rfirst_col_options = [0, 1]
      rfirst_arr_options = [0, 1, 2, 3, 4]

      rf_cur_col = rfirst_col_options.sample
      rf_cur_arr = rfirst_arr_options.sample

      @current_rf = right_first[rf_cur_col][rf_cur_arr]
    end
    
    def self.second_node
      right_hemisphere = $PHRASES[1]

      ## Right Hemisphere
      right_second = right_hemisphere[1]

      ### Right Hemisphere Fist Selection
      rfirst_col_options = [0, 1]
      rfirst_arr_options = [0, 1, 2, 3, 4]

      rf_cur_col = rfirst_col_options.sample
      rf_cur_arr = rfirst_arr_options.sample

      @current_rs = right_second[rf_cur_col][rf_cur_arr]
    end
    
    def self.third_node
      right_hemisphere = $PHRASES[1]

      ## Right Hemisphere
      right_third = right_hemisphere[2]
      
      ## Right Hemisphere Third Selection
      rthird_col_options = [0, 1]
      rthird_arr_options = [0, 1, 2, 3, 4]

      rt_cur_col = rthird_col_options.sample
      rt_cur_arr = rthird_arr_options.sample
      
      @current_rt = right_third[rf_cur_col][rf_cur_arr]
    end
    
    def self.collect_phrases
      puts "#{@current_sf}. #{@current_sf}. #{@current_st}."
    end
  end
end
