require 'test_helper'

class MediaVideoTest < ActiveSupport::TestCase
    test "Url vacio - mensaje de error" do
        media_video = MediaVideo.new 
        media_video.titulo = "Live It Up"
        media_video.descripcion = "Nicky Jam feat. Will Smith & Era Istrefi (2018 FIFA World Cup Russia)"
        media_video.fecha = "10-10-2018"
        assert_not media_video.save, "Guardo video sin url"
        assert_equal ["Debe colocar un url valido"], media_video.errors[:url]
    end

    test "Nombre vacio - mensaje de error" do
        media_video = MediaVideo.new
        media_video.url = "https://www.youtube.com/embed/V15BYnSr0P8" 
        media_video.descripcion = "Nicky Jam feat. Will Smith & Era Istrefi (2018 FIFA World Cup Russia)"
        media_video.fecha = "10-10-2018"
        assert_not media_video.save, "Guardo video sin nombre"
        assert_equal ["Debe colocar un titulo para el video"], media_video.errors[:titulo]
    end

    test "Descripcion vacio - mensaje de error" do
        media_video = MediaVideo.new
        media_video.url = "https://www.youtube.com/embed/V15BYnSr0P8"
        media_video.titulo = "Live It Up" 
        media_video.fecha = "10-10-2018"
        assert_not media_video.save, "Guardo video sin descripcion"
        assert_equal ["Debe colocar una descripcion al video"], media_video.errors[:descripcion]
    end

    test "media_video valido" do
        media_video = MediaVideo.new(url: 'https://www.youtube.com/embed/V15BYnSr0P8',
                            titulo: 'Live It Up',
                            descripcion: 'Nicky Jam feat. Will Smith & Era Istrefi (2018 FIFA World Cup Russia)',
                            fecha: '10-10-2018') 
        assert media_video.valid?
    end

    test "media_video guarda" do
        media_video = MediaVideo.new(url: 'https://www.youtube.com/embed/V15BYnSr0P8',
                            titulo: 'Live It Up',
                            descripcion: 'Nicky Jam feat. Will Smith & Era Istrefi (2018 FIFA World Cup Russia)',
                            fecha: '10-10-2018') 
        assert media_video.save
    end
end