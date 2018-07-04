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

TRAJECTORY_BUILDER.pure_localization_trimmer {
  max_submaps_to_keep: 3
}

TRAJECTORY_BUILDER_2D.max_range = 8.
TRAJECTORY_BUILDER_2D.missing_data_ray_length = 5.
TRAJECTORY_BUILDER_2D.submaps.num_range_data = 
  2 * TRAJECTORY_BUILDER_2D.submaps.num_range_data

POSE_GRAPH.global_sampling_ratio = .005
POSE_GRAPH.optimize_every_n_nodes = 2
POSE_GRAPH.global_constraint_search_after_n_seconds = 60

POSE_GRAPH.constraint_builder.min_score = .4
POSE_GRAPH.constraint_builder.global_localization_min_score = .35
POSE_GRAPH.constraint_builder.max_constraint_distance = 2.
POSE_GRAPH.constraint_builder.sampling_ratio = 0.2

POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.linear_search_window = 0.3
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.angular_search_window = math.rad(5.0)
