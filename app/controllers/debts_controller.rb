class DebtsController < UIViewController

  def viewDidLoad
    super

    self.title = "Avalanche"

    #rightButton = UIBarButtonItem.alloc.initWithTitle(​"Change"​, style: UIBarButtonItemStyleBordered, target:self, action:'change_color')
    rightButton = UIBarButtonItem.alloc.initWithTitle("Add", style:UIBarButtonItemStyleBordered, target:self, action:"add_debt")

    self.navigationItem.rightBarButtonItem = rightButton

    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.autoresizingMask = UIViewAutoresizingFlexibleHeight
    self.view.addSubview(@table)

    @table.dataSource = self
    @data = ['car', 'visa card', 'hospital bill', 'boat', 'house']
  end

  def tableView(tableView, numberOfRowsInSection:section)
    #return number of rows
    @data.count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    #put cell data here

    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)
    cell ||= UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:@reuseIdentifier)

    # put data in the cell
    cell.textLabel.text = @data[indexPath.row]
    cell
  end
end
