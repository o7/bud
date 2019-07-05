searchNodes=[{"ref":"PLM.Account.html","title":"PLM.Account","type":"module","doc":"PLM.Account is a process that handles user investments."},{"ref":"PLM.Account.html#action/2","title":"PLM.Account.action/2","type":"function","doc":""},{"ref":"PLM.Account.html#close_account/1","title":"PLM.Account.close_account/1","type":"macro","doc":""},{"ref":"PLM.Account.html#close_account/2","title":"PLM.Account.close_account/2","type":"macro","doc":""},{"ref":"PLM.Account.html#def/0","title":"PLM.Account.def/0","type":"function","doc":""},{"ref":"PLM.Account.html#tx/1","title":"PLM.Account.tx/1","type":"macro","doc":""},{"ref":"PLM.Account.html#tx/2","title":"PLM.Account.tx/2","type":"macro","doc":""},{"ref":"PLM.Actor.html","title":"PLM.Actor","type":"module","doc":""},{"ref":"PLM.Actor.html#event/1","title":"PLM.Actor.event/1","type":"function","doc":""},{"ref":"PLM.Actor.html#header/0","title":"PLM.Actor.header/0","type":"function","doc":""},{"ref":"PLM.Actors.html","title":"PLM.Actors","type":"module","doc":""},{"ref":"PLM.Actors.html#event/1","title":"PLM.Actors.event/1","type":"function","doc":""},{"ref":"PLM.Actors.html#header/0","title":"PLM.Actors.header/0","type":"function","doc":""},{"ref":"PLM.Application.html","title":"PLM.Application","type":"module","doc":""},{"ref":"PLM.Application.html#start/2","title":"PLM.Application.start/2","type":"function","doc":"Called when an application is started. This function is called when an application is started using Application.start/2 (and functions on top of that, such as Application.ensure_started/2). This function should start the top-level process of the application (which should be the top supervisor of the application&#39;s supervision tree if the application follows the OTP design principles around supervision). start_type defines how the application is started: :normal - used if the startup is a normal startup or if the application is distributed and is started on the current node because of a failover from another node and the application specification key :start_phases is :undefined. {:takeover, node} - used if the application is distributed and is started on the current node because of a failover on the node node. {:failover, node} - used if the application is distributed and is started on the current node because of a failover on node node, and the application specification key :start_phases is not :undefined. start_args are the arguments passed to the application in the :mod specification key (e.g., mod: {MyApp, [:my_args]}). This function should either return {:ok, pid} or {:ok, pid, state} if startup is successful. pid should be the PID of the top supervisor. state can be an arbitrary term, and if omitted will default to []; if the application is later stopped, state is passed to the stop/1 callback (see the documentation for the c:stop/1 callback for more information). use Application provides no default implementation for the start/2 callback. Callback implementation for Application.start/2."},{"ref":"PLM.Forms.html","title":"PLM.Forms","type":"module","doc":""},{"ref":"PLM.Forms.html#event/1","title":"PLM.Forms.event/1","type":"function","doc":""},{"ref":"PLM.Forms.Act.html","title":"PLM.Forms.Act","type":"module","doc":""},{"ref":"PLM.Forms.Act.html#doc/0","title":"PLM.Forms.Act.doc/0","type":"function","doc":""},{"ref":"PLM.Forms.Act.html#id/0","title":"PLM.Forms.Act.id/0","type":"function","doc":""},{"ref":"PLM.Forms.Act.html#new/2","title":"PLM.Forms.Act.new/2","type":"function","doc":""},{"ref":"PLM.Forms.Pass.html","title":"PLM.Forms.Pass","type":"module","doc":""},{"ref":"PLM.Forms.Pass.html#doc/0","title":"PLM.Forms.Pass.doc/0","type":"function","doc":""},{"ref":"PLM.Forms.Pass.html#id/0","title":"PLM.Forms.Pass.id/0","type":"function","doc":""},{"ref":"PLM.Forms.Pass.html#new/2","title":"PLM.Forms.Pass.new/2","type":"function","doc":""},{"ref":"PLM.Forms.Pass.html#phone/1","title":"PLM.Forms.Pass.phone/1","type":"macro","doc":""},{"ref":"PLM.Forms.Pass.html#phone/2","title":"PLM.Forms.Pass.phone/2","type":"macro","doc":""},{"ref":"PLM.Login.html","title":"PLM.Login","type":"module","doc":""},{"ref":"PLM.Login.html#event/1","title":"PLM.Login.event/1","type":"function","doc":""},{"ref":"PLM.Product.html","title":"PLM.Product","type":"module","doc":""},{"ref":"PLM.Product.html#event/1","title":"PLM.Product.event/1","type":"function","doc":""},{"ref":"PLM.Product.html#incomeHeader/0","title":"PLM.Product.incomeHeader/0","type":"function","doc":""},{"ref":"PLM.Product.html#investmentsHeader/0","title":"PLM.Product.investmentsHeader/0","type":"function","doc":""},{"ref":"PLM.Product.html#outcomeHeader/0","title":"PLM.Product.outcomeHeader/0","type":"function","doc":""},{"ref":"PLM.Product.html#pushIncome/1","title":"PLM.Product.pushIncome/1","type":"function","doc":""},{"ref":"PLM.Product.html#pushInvestments/1","title":"PLM.Product.pushInvestments/1","type":"function","doc":""},{"ref":"PLM.Product.html#pushOutcome/1","title":"PLM.Product.pushOutcome/1","type":"function","doc":""},{"ref":"PLM.Products.html","title":"PLM.Products","type":"module","doc":""},{"ref":"PLM.Products.html#event/1","title":"PLM.Products.event/1","type":"function","doc":""},{"ref":"PLM.Products.html#header/0","title":"PLM.Products.header/0","type":"function","doc":""},{"ref":"PLM.Products.html#months/0","title":"PLM.Products.months/0","type":"function","doc":""},{"ref":"PLM.Routes.html","title":"PLM.Routes","type":"module","doc":""},{"ref":"PLM.Routes.html#finish/2","title":"PLM.Routes.finish/2","type":"function","doc":""},{"ref":"PLM.Routes.html#init/2","title":"PLM.Routes.init/2","type":"function","doc":""},{"ref":"PLM.Routes.html#route/1","title":"PLM.Routes.route/1","type":"function","doc":""},{"ref":"PLM.Rows.Investment.html","title":"PLM.Rows.Investment","type":"module","doc":""},{"ref":"PLM.Rows.Investment.html#doc/0","title":"PLM.Rows.Investment.doc/0","type":"function","doc":""},{"ref":"PLM.Rows.Investment.html#id/0","title":"PLM.Rows.Investment.id/0","type":"function","doc":""},{"ref":"PLM.Rows.Investment.html#new/2","title":"PLM.Rows.Investment.new/2","type":"function","doc":""},{"ref":"PLM.Rows.Payment.html","title":"PLM.Rows.Payment","type":"module","doc":""},{"ref":"PLM.Rows.Payment.html#doc/0","title":"PLM.Rows.Payment.doc/0","type":"function","doc":""},{"ref":"PLM.Rows.Payment.html#id/0","title":"PLM.Rows.Payment.id/0","type":"function","doc":""},{"ref":"PLM.Rows.Payment.html#new/2","title":"PLM.Rows.Payment.new/2","type":"function","doc":""},{"ref":"PLM.Rows.Process.html","title":"PLM.Rows.Process","type":"module","doc":""},{"ref":"PLM.Rows.Process.html#doc/0","title":"PLM.Rows.Process.doc/0","type":"function","doc":""},{"ref":"PLM.Rows.Process.html#id/0","title":"PLM.Rows.Process.id/0","type":"function","doc":""},{"ref":"PLM.Rows.Process.html#new/2","title":"PLM.Rows.Process.new/2","type":"function","doc":""},{"ref":"PLM.Rows.Product.html","title":"PLM.Rows.Product","type":"module","doc":""},{"ref":"PLM.Rows.Product.html#doc/0","title":"PLM.Rows.Product.doc/0","type":"function","doc":""},{"ref":"PLM.Rows.Product.html#id/0","title":"PLM.Rows.Product.id/0","type":"function","doc":""},{"ref":"PLM.Rows.Product.html#new/2","title":"PLM.Rows.Product.new/2","type":"function","doc":""},{"ref":"PLM.Rows.Trace.html","title":"PLM.Rows.Trace","type":"module","doc":""},{"ref":"PLM.Rows.Trace.html#doc/0","title":"PLM.Rows.Trace.doc/0","type":"function","doc":""},{"ref":"PLM.Rows.Trace.html#id/0","title":"PLM.Rows.Trace.id/0","type":"function","doc":""},{"ref":"PLM.Rows.Trace.html#new/2","title":"PLM.Rows.Trace.new/2","type":"function","doc":""}]