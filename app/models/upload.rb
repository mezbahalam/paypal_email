class Upload < ActiveRecord::Base
  def cloud_big
    "http://res.cloudinary.com/dxdytksp9/image/upload/c_fit,fl_png8,h_2400,w_2400/v1428885019/#{cloudinary_code}.png"
  end

  def cloud_med
    "http://res.cloudinary.com/dxdytksp9/image/upload/c_fit,fl_png8,h_600,w_600/v1428885019/#{cloudinary_code}.png"
  end

  def url_1200

    "http://res.cloudinary.com/dxdytksp9/image/upload/c_scale,h_900,w_1200/c_fit,g_north,h_700,l_#{cloudinary_code},o_88,w_390,y_#{(140+((shirt_inches_from_top.to_f)*23)).to_i}/"
  end

  def url_small_mockup
    "http://res.cloudinary.com/dxdytksp9/image/upload/c_scale,w_575/c_fit,g_north,h_400,l_#{cloudinary_code},o_88,w_250,y_#{(94+((shirt_inches_from_top.to_f)*14)).to_i}/"
  end

  def url_big_mockup
    "http://res.cloudinary.com/dxdytksp9/image/upload/c_fit,g_north,h_1600,l_#{cloudinary_code},o_88,w_1000,y_#{(375+((shirt_inches_from_top.to_f)*56)).to_i}/"
  end


  def cloud_1200_mockup
    case shirt_color
    when "white"
      url_1200+"White-White_1200x900_qgkndw.jpg"
    when "black"
      url_1200+"Black-White_1200x900_wdpsbq.jpg"
    when "blue"
      url_1200+"Blue-White_1200x900_hdc8tp.jpg"
    when "green"
      url_1200+"Green-White_1200x900_p0uogb.jpg"
    when "orange"
      url_1200+"Orange-White_1200x900_vsox0a.jpg"
    when "pink"
      url_1200+"Pink-White_1200x900_i533je.jpg"
    when "purple"
      url_1200+"Purple-White_1200x900_vzurgu.jpg"
    when "red"
      url_1200+"Red-White_1200x900_r95swn.jpg"
    when "yellow"
      url_1200+"Yellow-White_1200x900_jp5rja.jpg"
    else
      url_1200+"White-White_1200x900_qgkndw.jpg"
    end
  end

  def cloud_1200_dark
    case shirt_color
    when "white"
      url_1200+"White-DarkTexture_1200x900_fyc6bq.jpg"
    when "black"
      url_1200+"Black-DarkTexture_1200x900_nkvzhe.jpg"
    when "blue"
      url_1200+"Blue-DarkTexture_1200x900_feqaau.jpg"
    when "green"
      url_1200+"Green-DarkTexture_1200x900_v4vepl.jpg"
    when "orange"
      url_1200+"Orange-DarkTexture_1200x900_fowiul.jpg"
    when "pink"
      url_1200+"Pink-DarkTexture_1200x900_lzaulh.jpg"
    when "purple"
      url_1200+"Purple-DarkTexture_1200x900_mhlkng.jpg"
    when "red"
      url_1200+"Red-DarkTexture_1200x900_xs6wkz.jpg"
    when "yellow"
      url_1200+"Yellow-DarkTexture_1200x900_s4b6ku.jpg"
    else
      url_1200+"White-DarkTexture_1200x900_fyc6bq.jpg"
    end
  end

  def cloud_1200_light
    case shirt_color
    when "white"
      url_1200+"White-LightTexture_1200x900_tk1qoi.jpg"
    when "black"
      url_1200+"Black-LightTexture_1200x900_x6spef.jpg"
    when "blue"
      url_1200+"Blue-LightTexture_1200x900_obrlw9.jpg"
    when "green"
      url_1200+"Green-LightTexture_1200x900_itd690.jpg"
    when "orange"
      url_1200+"Orange-LightTexture_1200x900_krpu2r.jpg"
    when "pink"
      url_1200+"Pink-LightTexture_1200x900_peppnw.jpg"
    when "purple"
      url_1200+"Purple-LightTexture_1200x900_pzygzj.jpg"
    when "red"
      url_1200+"Red-LightTexture_1200x900_ebgtw8.jpg"
    when "yellow"
      url_1200+"Yellow-LightTexture_1200x900_q6c57w.jpg"
    else
      url_1200+"White-LightTexture_1200x900_tk1qoi.jpg"
    end
  end


  def cloud_small_mockup
    case shirt_color
    when "white"
      url_small_mockup+"White-Transparent_2300x2415_ecwmqc.jpg"
    when "black"
      url_small_mockup+"Black-Transparent_2300x2415_m6fd3w.jpg"
    when "blue"
      url_small_mockup+"Blue-Transparent_2300x2415_kxvgkd.jpg"
    when "green"
      url_small_mockup+"Green-Transparent_2300x2415_qkw0ta.jpg"
    when "orange"
      url_small_mockup+"Orange-Transparent_2300x2415_ztzgv6.jpg"
    when "pink"
      url_small_mockup+"Pink-Transparent_2300x2415_tcxwet.jpg"
    when "purple"
      url_small_mockup+"Purple-Transparent_2300x2415_y5yv8p.jpg"
    when "red"
      url_small_mockup+"Red-Transparent_2300x2415_wexfhx.jpg"
    when "yellow"
      url_small_mockup+"Yellow-Transparent_2300x2415_bz2vss.jpg"
    else
      url_small_mockup+"White-White_1200x900_qgkndw.jpg"
    end
  end

  def cloud_big_mockup
    case shirt_color
    when "white"
      url_big_mockup+"White-Transparent_2300x2415_ecwmqc.jpg"
    when "black"
      url_big_mockup+"Black-Transparent_2300x2415_m6fd3w.jpg"
    when "blue"
      url_big_mockup+"Blue-Transparent_2300x2415_kxvgkd.jpg"
    when "green"
      url_big_mockup+"Green-Transparent_2300x2415_qkw0ta.jpg"
    when "orange"
      url_big_mockup+"Orange-Transparent_2300x2415_ztzgv6.jpg"
    when "pink"
      url_big_mockup+"Pink-Transparent_2300x2415_tcxwet.jpg"
    when "purple"
      url_big_mockup+"Purple-Transparent_2300x2415_y5yv8p.jpg"
    when "red"
      url_big_mockup+"Red-Transparent_2300x2415_wexfhx.jpg"
    when "yellow"
      url_big_mockup+"Yellow-Transparent_2300x2415_bz2vss.jpg"
    else
      url_big_mockup+"White-White_1200x900_qgkndw.jpg"
    end

  end

end
