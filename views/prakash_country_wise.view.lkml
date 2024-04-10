# The name of this view in Looker is "Prakash Country Wise"
view: prakash_country_wise {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PRAKASH_DATASET.PRAKASH_COUNTRY_WISE` ;;

  # No primary key is defined for this view. In order to join this view,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " 1 Week Increase" in Explore.

  dimension: _1_week___increase {
    type: number
    sql: ${TABLE}._1_week___increase ;;
  }

  dimension: _1_week_change {
    type: number
    sql: ${TABLE}._1_week_change ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.Active ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.Confirmed ;;
  }

  dimension: confirmed_last_week {
    type: number
    sql: ${TABLE}.Confirmed_last_week ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.Deaths ;;
  }

  dimension: deaths___100_cases {
    type: number
    sql: ${TABLE}.Deaths___100_Cases ;;
  }

  dimension: deaths___100_recovered {
    type: number
    sql: ${TABLE}.Deaths___100_Recovered ;;
  }

  dimension: new_cases {
    type: number
    sql: ${TABLE}.New_cases ;;
  }

  dimension: new_deaths {
    type: number
    sql: ${TABLE}.New_deaths ;;
  }

  dimension: new_recovered {
    type: number
    sql: ${TABLE}.New_recovered ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.Recovered ;;
  }

  dimension: recovered___100_cases {
    type: number
    sql: ${TABLE}.Recovered___100_Cases ;;
  }

  dimension: who_region {
    type: string
    sql: ${TABLE}.WHO_Region ;;
  }
  measure: count {
    type: count
  }
}
