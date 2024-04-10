# The name of this view in Looker is "Prakash Usa Country"
view: prakash_usa_country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PRAKASH_DATASET.PRAKASH_USA_COUNTRY` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Admin2" in Explore.

  dimension: admin2 {
    type: string
    sql: ${TABLE}.Admin2 ;;
  }

  dimension: code3 {
    type: number
    sql: ${TABLE}.code3 ;;
  }

  dimension: combined_key {
    type: string
    sql: ${TABLE}.Combined_Key ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.Confirmed ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
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

  dimension: fips {
    type: number
    sql: ${TABLE}.FIPS ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: long_ {
    type: number
    sql: ${TABLE}.Long_ ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.Province_State ;;
  }

  dimension: uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.UID ;;
  }
  measure: count {
    type: count
  }
}
