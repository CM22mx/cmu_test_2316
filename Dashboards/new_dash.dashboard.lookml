- dashboard: new_dash
  title: UDD to get LookML
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  preferred_slug: mydashboardrodrigowasd
  elements:
  - title: UDD to get LookML
    name: UDD to get LookML
    model: mtr_rodrigor_testing
    explore: order_items
    type: looker_grid
    fields: [products.brand, products.count, order_items.count, inventory_items.count]
    sorts: [products.count desc 0]
    limit: 10
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      products.count:
        is_active: true
      order_items.count:
        is_active: true
      inventory_items.count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: mtr_rodrigor_testing
      explore: order_items
      type: looker_grid
      fields: [products.brand, products.count, order_items.count]
      sorts: [products.count desc 0]
      limit: 10
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
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        products.count:
          is_active: true
        order_items.count:
          is_active: true
        inventory_items.count:
          is_active: true
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      hidden_pivots: {}
    - model: mtr_rodrigor_testing
      explore: order_items
      type: table
      fields: [products.brand, inventory_items.count]
      limit: 500
      join_fields:
      - field_name: products.brand
        source_field_name: products.brand
    type: table
    row: 12
    col: 0
    width: 24
    height: 6
