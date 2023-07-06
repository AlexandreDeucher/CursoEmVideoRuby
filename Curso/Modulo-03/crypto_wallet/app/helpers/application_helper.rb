module ApplicationHelper
    def locale
       I18n.locale == :en ? "Estados unidos" : "Brasil"
    end

    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end
end
 module ApplicationHelper
    def date_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "produção"
        else
            "teste"
        end
    end
end
