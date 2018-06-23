.. Copyright 2016 The Cartographer Authors
             2018 Magazino GmbH

.. Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

..      http://www.apache.org/licenses/LICENSE-2.0

.. Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

================================================
Cartographer ROS for Magazino Robotics Platforms
================================================

|build| |license|

Purpose
=======

`Cartographer`_ is a system that provides real-time simultaneous localization
and mapping (`SLAM`_) in 2D and 3D across multiple platforms and sensor
configurations. This repository provides Cartographer SLAM for `Magazino
Robotics`_ platforms via `Cartographer ROS`_. This is a simplified integration
for testing and evaluation purposes only.

.. _Cartographer: https://github.com/googlecartographer/cartographer
.. _Cartographer ROS: https://github.com/googlecartographer/cartographer_ros
.. _SLAM: https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping
.. _Magazino Robotics: https://www.magazino.eu/?lang=en

Documentation
=============

Dependencies
------------

We keep the master branch of this repository compatible with the latest 
revision of the `cartographer_ros`_ repository.

Release versions of this repository can be found here: `Releases`_.
They are tagged according to the version number of the matching release version
of ``cartographer_ros``.

.. _cartographer_ros: https://github.com/googlecartographer/cartographer_ros
.. _Releases: https://github.com/magazino/cartographer_magazino/releases

Data
----

We currently support bagfiles recorded on Magazino TORU robots. Support for
other platforms like SOTO may be added in the future.

Download links for the public datasets of Magazino robots can be found on the 
`Cartographer ROS Read the Docs site`_.

.. _Cartographer ROS Read the Docs site: https://google-cartographer-ros.readthedocs.io/en/latest/data.html#magazino


TORU
====

We provide two sample datasets for mapping and localization that were
recorded in a hallway.

Run the simulation demo (mapping) with the hallway dataset:

.. code-block:: bash

  cd data  # (where you stored the bagfiles)
  roslaunch cartographer_toru demo_toru_simulation.launch bag_filename:=$(pwd)/hallway_return.bag playback_rate:=2

Use the ``write_state`` ROS service to serialize the state to a ``.pbstream`` file:

.. code-block:: bash

  rosservice call /write_state "filename: 'hallway_return.pbstream'"

If realistic timing is not critical, you can also use the faster offline node:

.. code-block:: bash

  roslaunch cartographer_toru offline_toru_2d.launch bag_filenames:=$(pwd)/hallway_return.bag

Run the localization demo:

.. code-block:: bash

  roslaunch cartographer_toru demo_toru_localization.launch load_state_filename:=$(pwd)/hallway_return.pbstream bag_filename:=$(pwd)/hallway_localization.bag

.. |build| image:: https://travis-ci.org/magazino/cartographer_magazino.svg?branch=master
    :target: https://travis-ci.org/magazino/cartographer_magazino
.. |license| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
    :alt: Apache 2 license.
    :scale: 100%
    :target: https://github.com/magazino/cartographer_magazino/blob/master/LICENSE

About Magazino
==============

Magazino is a robotics start-up based in Munich, Germany.
We develop and build perception-controlled, mobile robots for intralogistics.
`We are hiring`_!

A video of TORU robots in action at one of our German customers:

.. raw:: html

  <div align="left">
    <a href="https://www.youtube.com/watch?v=kj8NaHAoLJw">
      <img src="https://img.youtube.com/vi/kj8NaHAoLJw/0.jpg"
           title="Pick-by-Robot: warehouse automation with Magazino at FIEGE Logistik"
           alt="Pick-by-Robot: warehouse automation with Magazino at FIEGE Logistik"
      >
    </a>
  </div>

.. _We are hiring: https://www.magazino.eu/jobs-2/?lang=en
