module ApplicationHelper
  def humanize_boolean(boolean)
    boolean ? 'Yes' : 'No' unless boolean == nil
  end
end
