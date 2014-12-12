.class Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/softwinner/launcher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput p2, p0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 1257
    iput-object p3, p0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1258
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mApp:Lcom/softwinner/launcher/LauncherApplication;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1600(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/LauncherApplication;

    move-result-object v6

    .line 1263
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1264
    .local v12, packages:[Ljava/lang/String;
    array-length v2, v12

    .line 1265
    .local v2, N:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1287
    :cond_0
    const/4 v3, 0x0

    .line 1288
    .local v3, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const/4 v14, 0x0

    .line 1289
    .local v14, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 1291
    .local v10, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1298
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/softwinner/launcher/ApplicationInfo;

    .line 1299
    .local v9, info:Lcom/softwinner/launcher/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1400(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/IconCache;

    move-result-object v16

    iget-object v0, v9, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/softwinner/launcher/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1267
    .end local v3           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/softwinner/launcher/ApplicationInfo;
    .end local v10           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .end local v14           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    :pswitch_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 1268
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mAllAppsList.addPackage "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v12, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/softwinner/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1267
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1273
    .end local v7           #i:I
    :pswitch_1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v2, :cond_0

    .line 1274
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mAllAppsList.updatePackage "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v12, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/softwinner/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1273
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1280
    .end local v7           #i:I
    :pswitch_2
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v2, :cond_0

    .line 1281
    const-string v16, "Launcher.Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mAllAppsList.removePackage "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v12, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    invoke-virtual/range {v16 .. v17}, Lcom/softwinner/launcher/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 1280
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1302
    .end local v7           #i:I
    .restart local v3       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .restart local v10       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .restart local v14       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1307
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-object/from16 v5, v16

    .line 1308
    .local v5, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :goto_4
    if-nez v5, :cond_6

    .line 1309
    const-string v16, "Launcher.Model"

    const-string v17, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_4
    :goto_5
    return-void

    .line 1307
    .end local v5           #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 1313
    .restart local v5       #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :cond_6
    if-eqz v3, :cond_7

    .line 1314
    move-object v4, v3

    .line 1315
    .local v4, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1323
    .end local v4           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    :cond_7
    if-eqz v10, :cond_8

    .line 1324
    move-object v11, v10

    .line 1325
    .local v11, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v11}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1333
    .end local v11           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    :cond_8
    if-eqz v14, :cond_4

    .line 1334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1335
    .local v13, permanent:Z
    :goto_6
    move-object v15, v14

    .line 1336
    .local v15, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v15, v13}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {v16 .. v17}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1334
    .end local v13           #permanent:Z
    .end local v15           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 1265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
