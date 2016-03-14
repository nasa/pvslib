
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Change points (version numbers at database schema definition changes)

db_schema_change  = ((0,1), (1,0), (1,1),)


# Hypatheon version parameters

app_version       = '1.2'
release_date      = '18 Feb 2016'
release_month     = 'Feb 2016'

email_addr        = 'b.divito@nasa.gov'
home_page         = 'shemesh.larc.nasa.gov/people/bld/hypatheon.html'

app_version_tup   = tuple(map(int, app_version.split('.')))


class StartUpError(Exception):  pass


# Debug flags (must be set before session begins):

explain_queries   = 0    # use 0 for no explanation logging; 1 for major queries,
                         # 2 for minor queries, 3 to add virtual machine code

# For Client

check_assertions  = 0
collect_time_data = 0

exclude_time_data = ['history_motion', 'indexing_progress']

