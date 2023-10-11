---
- dashboard: embed_LookML_Dashboard
  title: LookML Dashboard embedded test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 1g3UbxXtPPuEbrHJV6AKcg
  elements:
  - title: Download_to_csv(coolblue)
    name: Download_to_csv(coolblue)
    model: cm_test2316
    explore: order_items
    type: single_value
    fields: [average_of_age]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_age
      based_on: users.age
      expression: ''
      label: Average of Age
      type: average
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average age
    value_format: "##.##"
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Products Rank
    name: Products Rank
    model: cm_test2316
    explore: order_items
    type: looker_grid
    fields: [products.rank, products.brand, products.count]
    sorts: [products.rank]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_age
      based_on: users.age
      expression: ''
      label: Average of Age
      type: average
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "##.##"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 13
    height: 6
  - title: Pivoted Tile
    name: Pivoted Tile
    model: cm_test2316
    explore: order_items
    type: looker_grid
    fields: [products.brand, products.id, products.category, products.rank, products.item_name,
      inventory_items.created_quarter, products.count]
    pivots: [products.brand, products.id]
    filters:
      inventory_items.created_quarter: 2019/09/01 to 2019/10/31
    sorts: [products.brand, products.id, inventory_items.created_quarter desc]
    limit: 500
    column_limit: 199
    dynamic_fields:
    - measure: average_of_age
      based_on: users.age
      expression: ''
      label: Average of Age
      type: average
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "##.##"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 6
    col: 1
    width: 22
    height: 6
