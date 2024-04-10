# The name of this view in Looker is "Prakash Result"
view: prakash_result {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PRAKASH_DATASET.PRAKASH_RESULT` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Typename" in Explore.

  dimension: __typename {
    type: string
    sql: ${TABLE}.__typename ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: linked_in_url {
    type: string
    sql: ${TABLE}.linkedInURL ;;
  }

  dimension: object_uri {
    type: string
    sql: ${TABLE}.objectURI ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updatedAt ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, last_name, __typename, user_name]
  }
}
