class Logger

  def self.log(api_name, payload)
    Rails.logger.info("[DiscourseLogger] API: #{api_name}, Payload: #{payload}")
    Jobs.enqueue(:logger_worker, api_name: api_name, payload: payload)
  end

end
