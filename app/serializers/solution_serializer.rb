class SolutionSerializer < ActiveModel::Serializer
  attributes :initial_cost, :iteration_cost, :iteration_count, :display_name

  def iteration_count
    object.automation_scenario.iteration_count
  end
end
