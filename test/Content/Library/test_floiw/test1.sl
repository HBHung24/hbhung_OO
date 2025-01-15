namespace: test_floiw
flow:
  name: test1
  workflow:
    - Generate_Random_Number:
        do_external:
          06fe8531-868b-4e79-aa7a-13a5e30a66ec:
            - min: '1'
            - max: '1000'
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Generate_Random_Number:
        x: 480
        'y': 240
        navigate:
          ea00abac-73b5-7efe-dd4b-5b971f1d44e7:
            targetId: 9463c5fc-3abd-ea43-b340-1285cb8dfb30
            port: failure
          eee9ac98-3d0a-34c6-d57f-9a6ccf9f81b2:
            targetId: f64fc6d6-2ef7-e09f-8cc8-63486f61e036
            port: success
    results:
      SUCCESS:
        f64fc6d6-2ef7-e09f-8cc8-63486f61e036:
          x: 160
          'y': 200
      FAILURE:
        9463c5fc-3abd-ea43-b340-1285cb8dfb30:
          x: 600
          'y': 120
