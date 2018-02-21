-- Copyright 2018 Magazino GmbH
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

options = {
  tracking_frame = "base_footprint",
  pipeline = {
    {
      action = "min_max_range_filter",
      min_range = 0.3,
      max_range = 5.,
    },

    {
      action = "dump_num_points",
    },
    
    -- The points in the PLY can be visualized using
    -- https://github.com/googlecartographer/point_cloud_viewer.
    {
      action = "write_ply",
      filename = "points.ply",
    }

  }
}

return options
