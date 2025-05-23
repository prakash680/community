module Jobs
  class LoggerWorker < ::Jobs::Base
    def execute(args)
      api_name = args[:api_name]
      payload = args[:payload]
      external_api_url = SiteSetting.discourse_logger_external_api_url

      begin
        response = Net::HTTP.post(
          URI(external_api_url),
          { api_name: api_name, payload: payload }.to_json,
          'Content-Type' => 'application/json'
        )

        Rails.logger.info("[DiscourseLogger] Data sent to #{external_api_url}, Response: #{response.body}")
      rescue => e
        Rails.logger.error("[DiscourseLogger] Failed to send data: #{e.message}")
      end
    end
  end
end
