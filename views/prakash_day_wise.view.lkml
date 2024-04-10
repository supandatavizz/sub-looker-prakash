# The name of this view in Looker is "Prakash Day Wise"
view: prakash_day_wise {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PRAKASH_DATASET.PRAKASH_DAY_WISE` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active" in Explore.

  dimension: active {
    type: number
    sql: ${TABLE}.Active ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.Confirmed ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
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

  dimension: no__of_countries {
    type: number
    sql: ${TABLE}.No__of_countries ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.Recovered ;;
  }

  dimension: recovered___100_cases {
    type: number
    sql: ${TABLE}.Recovered___100_Cases ;;
  }
  measure: count {
    type: count
  }
}
