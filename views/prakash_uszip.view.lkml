# The name of this view in Looker is "Prakash Uszip"
view: prakash_uszip {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PRAKASH_DATASET.PRAKASH_USZIP` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county_fips {
    type: number
    sql: ${TABLE}.county_fips ;;
  }

  dimension: county_fips_all {
    type: string
    sql: ${TABLE}.county_fips_all ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: county_names_all {
    type: string
    sql: ${TABLE}.county_names_all ;;
  }

  dimension: county_weights {
    type: string
    sql: ${TABLE}.county_weights ;;
  }

  dimension: density {
    type: number
    sql: ${TABLE}.density ;;
  }

  dimension: imprecise {
    type: yesno
    sql: ${TABLE}.imprecise ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: military {
    type: yesno
    sql: ${TABLE}.military ;;
  }

  dimension: parent_zcta {
    type: string
    sql: ${TABLE}.parent_zcta ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: zcta {
    type: yesno
    sql: ${TABLE}.zcta ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
    drill_fields: [county_name, state_name]
  }
}
