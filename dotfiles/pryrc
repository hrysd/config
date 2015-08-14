if defined?(Rails::Console)
  env = Pry::Helpers::Text.purple(Rails.env)

  prompt = prompt_for_wait = proc { |target_self, nest_level, pry|
    nested = nest_level.zero? ? '' : ":#{nest_level}"

    "[#{pry.input_array.size}] #{env} (#{Pry.view_clip(target_self)})#{nested}> "
  }

  Pry.config.tap do |config|
    config.prompt = [prompt, prompt_for_wait]
  end
end
