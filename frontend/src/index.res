let url: string = "https://tezos-current-bench.hasura.app/v1/graphql"

let client = ReScriptUrql.Client.make(~url, ())

ReactDOM.render(
  <ReScriptUrql.Context.Provider value=client> <App /> </ReScriptUrql.Context.Provider>,
  ReactDOM.querySelector("#root")->Belt.Option.getExn,
)
