view: users {
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: m1 {
    type: number
    sql: ${id}/(${id}-13) ;;
    value_format: "$0.00"
  }
  measure: m2 {
    type: number
    sql: ${m1}/(${id}-13) ;;
    value_format: "$0.00"
  }
  measure: total {
    type: sum
    sql: ${id} ;;
    value_format: "$0.00"
  }
  measure: m3 {
    type: number
    sql: ${m2}/(${m2}-3.75) ;;
  }

  measure: test {
    hidden: yes
    group_label: "How are you"
    label: "Need to remove show all"
    type: number
    sql: 1.0*${total}/nullif(${m3},0) ;;
    value_format_name: percent_1
    link: {
      label: "Show All"
      url: "https://gcpl2316.cloud.looker.com/x/VCOoDfhVpWLGhyYdwNRMdo"
    }
    link: {
      label: "Show Below"
      url: "https://gcpl2316.cloud.looker.com/x/QQenNFfIbU7Bix3IUXEwhK"
    }
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  first_name,
  last_name,
  events.count,
  orders.count,
  saralooker.count,
  sindhu.count,
  user_data.count
  ]
  }

}
