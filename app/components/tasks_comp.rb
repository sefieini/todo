class TasksComp < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = 'Task'
    c.bbar = nil
    c.tbar = [:add, :apply, :del]
    c.enable_pagination = false
    c.columns = [:title, :description, :done, :due_date, :position]
  end
end