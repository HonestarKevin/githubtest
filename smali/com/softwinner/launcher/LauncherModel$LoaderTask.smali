.class Lcom/softwinner/launcher/LauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/softwinner/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 438
    iput-boolean p3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 439
    return-void
.end method

.method static synthetic access$002(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 11

    .prologue
    .line 970
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 974
    .local v6, t:J
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 975
    .local v4, oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-nez v4, :cond_0

    .line 977
    const-string v9, "Launcher.Model"

    const-string v10, "LoaderTask running with no launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$4;

    invoke-direct {v10, p0, v4}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$4;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 992
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v9, v9, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 993
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 994
    move v5, v3

    .line 995
    .local v5, start:I
    add-int/lit8 v9, v3, 0x6

    if-gt v9, v0, :cond_1

    const/4 v1, 0x6

    .line 996
    .local v1, chunkSize:I
    :goto_2
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;

    invoke-direct {v10, p0, v4, v5, v1}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;II)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 993
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 995
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v1, v0, v3

    goto :goto_2

    .line 1005
    .end local v5           #start:I
    :cond_2
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;

    invoke-direct {v10, p0, v4}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1014
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$7;

    invoke-direct {v10, p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$7;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1026
    invoke-interface {v4}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 1027
    .local v2, currentScreen:I
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v9, v9, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1029
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1030
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v9, v9, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    .line 1031
    .local v8, widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->screen:I

    if-ne v9, v2, :cond_3

    .line 1032
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;

    invoke-direct {v10, p0, v4, v8}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1029
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1043
    .end local v8           #widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 1044
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v9, v9, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    .line 1045
    .restart local v8       #widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->screen:I

    if-eq v9, v2, :cond_5

    .line 1046
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$9;

    invoke-direct {v10, p0, v4, v8}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$9;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1043
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1057
    .end local v8           #widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    :cond_6
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$10;

    invoke-direct {v10, p0, v4}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$10;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1066
    iget-object v9, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v9}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/softwinner/launcher/LauncherModel$LoaderTask$11;

    invoke-direct {v10, p0, v6, v7}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$11;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;J)V

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/softwinner/launcher/ItemInfo;Lcom/softwinner/launcher/ItemInfo;)Z
    .locals 7
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 635
    iget-wide v3, p2, Lcom/softwinner/launcher/ItemInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v2

    .line 639
    :cond_1
    iget v0, p2, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_4

    .line 640
    iget v1, p2, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 641
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->screen:I

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 642
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into cell ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") occupied by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->screen:I

    aget-object v4, p1, v4

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v2, 0x0

    goto :goto_0

    .line 640
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 639
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    .end local v1           #y:I
    :cond_4
    iget v0, p2, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    :goto_3
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 652
    iget v1, p2, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_4
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    iget v4, p2, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 653
    iget v3, p2, Lcom/softwinner/launcher/ItemInfo;->screen:I

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    aput-object p2, v3, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 651
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private loadAllAppsByBatch()V
    .locals 27

    .prologue
    .line 1119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 1123
    .local v19, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 1124
    .local v12, oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-nez v12, :cond_1

    .line 1126
    const-string v23, "Launcher.Model"

    const-string v24, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    new-instance v11, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1131
    .local v11, mainIntent:Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1134
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1136
    .local v5, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v3, 0x7fffffff

    .line 1139
    .local v3, N:I
    const/4 v9, 0x0

    .line 1140
    .local v9, i:I
    const/4 v6, -0x1

    .line 1141
    .local v6, batchSize:I
    :cond_2
    :goto_1
    if-ge v9, v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1142
    if-nez v9, :cond_3

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/softwinner/launcher/AllAppsList;->clear()V

    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1145
    .local v14, qiaTime:J
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1147
    const-string v23, "Launcher.Model"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "queryIntentActivities took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v14

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    if-eqz v5, :cond_0

    .line 1153
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 1155
    const-string v23, "Launcher.Model"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "queryIntentActivities got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " apps"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-eqz v3, :cond_0

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mBatchSize:I
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1300(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v23

    if-nez v23, :cond_4

    .line 1162
    move v6, v3

    .line 1167
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1168
    .local v16, sortTime:J
    new-instance v23, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1171
    const-string v23, "Launcher.Model"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sort took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v16

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .end local v14           #qiaTime:J
    .end local v16           #sortTime:J
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 1178
    .local v21, t2:J
    move/from16 v18, v9

    .line 1179
    .local v18, startIndex:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v9, v3, :cond_5

    if-ge v10, v6, :cond_5

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v24

    new-instance v25, Lcom/softwinner/launcher/ApplicationInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v26, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;
    invoke-static/range {v26 .. v26}, Lcom/softwinner/launcher/LauncherModel;->access$1400(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/IconCache;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/softwinner/launcher/IconCache;)V

    invoke-virtual/range {v24 .. v25}, Lcom/softwinner/launcher/AllAppsList;->add(Lcom/softwinner/launcher/ApplicationInfo;)V

    .line 1182
    add-int/lit8 v9, v9, 0x1

    .line 1179
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1164
    .end local v10           #j:I
    .end local v18           #startIndex:I
    .end local v21           #t2:J
    .restart local v14       #qiaTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mBatchSize:I
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1300(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v6

    goto :goto_2

    .line 1185
    .end local v14           #qiaTime:J
    .restart local v10       #j:I
    .restart local v18       #startIndex:I
    .restart local v21       #t2:J
    :cond_5
    if-gt v9, v6, :cond_6

    const/4 v8, 0x1

    .line 1186
    .local v8, first:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-result-object v7

    .line 1187
    .local v7, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1188
    .local v4, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v23

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v23

    new-instance v24, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v8, v4}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1210
    const-string v23, "Launcher.Model"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "batch of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-int v25, v9, v18

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " icons processed in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v21

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1500(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v23

    if-lez v23, :cond_2

    if-ge v9, v3, :cond_2

    .line 1217
    :try_start_0
    const-string v23, "Launcher.Model"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sleeping for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v25, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v25 .. v25}, Lcom/softwinner/launcher/LauncherModel;->access$1500(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1500(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1220
    :catch_0
    move-exception v23

    goto/16 :goto_1

    .line 1185
    .end local v4           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .end local v7           #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    .end local v8           #first:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1225
    .end local v10           #j:I
    .end local v18           #startIndex:I
    .end local v21           #t2:J
    :cond_7
    const-string v24, "Launcher.Model"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cached all "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " apps in "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v19

    move-object/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "ms"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v23 .. v23}, Lcom/softwinner/launcher/LauncherModel;->access$1500(Lcom/softwinner/launcher/LauncherModel;)I

    move-result v23

    if-lez v23, :cond_8

    const-string v23, " (including delay)"

    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v23, ""

    goto :goto_5
.end method

.method private loadAndBindAllApps()V
    .locals 3

    .prologue
    .line 1078
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$1100(Lcom/softwinner/launcher/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/softwinner/launcher/LauncherModel;->access$1100(Lcom/softwinner/launcher/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1082
    iget-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/softwinner/launcher/LauncherModel;->access$1102(Lcom/softwinner/launcher/LauncherModel;Z)Z

    goto :goto_0

    .line 1087
    :cond_1
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    .line 667
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$600(Lcom/softwinner/launcher/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/softwinner/launcher/LauncherModel;->access$600(Lcom/softwinner/launcher/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 671
    iget-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/softwinner/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v1}, Lcom/softwinner/launcher/LauncherModel;->access$602(Lcom/softwinner/launcher/LauncherModel;Z)Z

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadFavoritesApp()Z
    .locals 17

    .prologue
    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 594
    .local v15, time:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 595
    .local v10, context:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 596
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/softwinner/launcher/LauncherSettings$FavoritesApp;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 598
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 599
    const-string v2, "packageName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 601
    .local v13, indexPackageName:I
    const-string v2, "className"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 606
    .local v12, indexClassName:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$500(Lcom/softwinner/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 607
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$500(Lcom/softwinner/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 611
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    .line 626
    :goto_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 628
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load favoriteApp time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v2, 0x1

    return v2

    .line 614
    :cond_1
    :try_start_3
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 615
    .local v14, packageName:Ljava/lang/String;
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, className:Ljava/lang/String;
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v14, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v9, cn:Landroid/content/ComponentName;
    const-string v2, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump favorites app info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$500(Lcom/softwinner/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$500(Lcom/softwinner/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 622
    .end local v8           #className:Ljava/lang/String;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v14           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 623
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading favorites application interrupted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 626
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 628
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 626
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private loadWorkspace()V
    .locals 61

    .prologue
    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v54

    .line 684
    .local v54, t:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 685
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 686
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 687
    .local v46, manager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v58

    .line 688
    .local v58, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v46 .. v46}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v41

    .line 689
    .local v41, isSafeMode:Z
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is SafeMode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 694
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v44, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 699
    .local v8, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v7, 0x4

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/softwinner/launcher/ItemInfo;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, [[[Lcom/softwinner/launcher/ItemInfo;

    .line 702
    .local v47, occupied:[[[Lcom/softwinner/launcher/ItemInfo;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 703
    .local v37, idIndex:I
    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 705
    .local v40, intentIndex:I
    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 707
    .local v10, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 709
    .local v14, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 710
    .local v9, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 712
    .local v15, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 714
    .local v16, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 716
    .local v30, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 718
    .local v43, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 720
    .local v24, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 722
    .local v51, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 724
    .local v26, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 726
    .local v27, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 728
    .local v52, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 730
    .local v53, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 731
    .local v57, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 741
    .local v31, displayModeIndex:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_8

    .line 743
    :try_start_1
    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 745
    .local v42, itemType:I
    packed-switch v42, :pswitch_data_0

    goto :goto_0

    .line 748
    :pswitch_0
    move/from16 v0, v40

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v39

    .line 750
    .local v39, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 755
    .local v6, intent:Landroid/content/Intent;
    if-nez v42, :cond_1

    .line 756
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v5, v46

    move-object v7, v13

    invoke-virtual/range {v4 .. v10}, Lcom/softwinner/launcher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/softwinner/launcher/ShortcutInfo;

    move-result-object v38

    .line 764
    .local v38, info:Lcom/softwinner/launcher/ShortcutInfo;
    :goto_1
    if-eqz v38, :cond_2

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object/from16 v0, v38

    invoke-virtual {v4, v13, v0, v8, v9}, Lcom/softwinner/launcher/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/softwinner/launcher/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 767
    move-object/from16 v0, v38

    iput-object v6, v0, Lcom/softwinner/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 768
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v38

    iput-wide v4, v0, Lcom/softwinner/launcher/ShortcutInfo;->id:J

    .line 769
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 770
    .local v29, container:I
    move/from16 v0, v29

    int-to-long v4, v0

    move-object/from16 v0, v38

    iput-wide v4, v0, Lcom/softwinner/launcher/ShortcutInfo;->container:J

    .line 771
    move/from16 v0, v51

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/softwinner/launcher/ShortcutInfo;->screen:I

    .line 772
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/softwinner/launcher/ShortcutInfo;->cellX:I

    .line 773
    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/softwinner/launcher/ShortcutInfo;->cellY:I

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/softwinner/launcher/ItemInfo;Lcom/softwinner/launcher/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    packed-switch v29, :pswitch_data_1

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move/from16 v0, v29

    int-to-long v11, v0

    #calls: Lcom/softwinner/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;
    invoke-static {v4, v11, v12}, Lcom/softwinner/launcher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;

    move-result-object v33

    .line 788
    .local v33, folderInfo:Lcom/softwinner/launcher/UserFolderInfo;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/UserFolderInfo;->add(Lcom/softwinner/launcher/ShortcutInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 922
    .end local v6           #intent:Landroid/content/Intent;
    .end local v29           #container:I
    .end local v33           #folderInfo:Lcom/softwinner/launcher/UserFolderInfo;
    .end local v38           #info:Lcom/softwinner/launcher/ShortcutInfo;
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v42           #itemType:I
    :catch_0
    move-exception v32

    .line 923
    .local v32, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v32

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 927
    .end local v9           #iconIndex:I
    .end local v10           #titleIndex:I
    .end local v14           #iconTypeIndex:I
    .end local v15           #iconPackageIndex:I
    .end local v16           #iconResourceIndex:I
    .end local v24           #appWidgetIdIndex:I
    .end local v26           #cellXIndex:I
    .end local v27           #cellYIndex:I
    .end local v30           #containerIndex:I
    .end local v31           #displayModeIndex:I
    .end local v32           #e:Ljava/lang/Exception;
    .end local v37           #idIndex:I
    .end local v40           #intentIndex:I
    .end local v43           #itemTypeIndex:I
    .end local v51           #screenIndex:I
    .end local v52           #spanXIndex:I
    .end local v53           #spanYIndex:I
    .end local v57           #uriIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 751
    .restart local v9       #iconIndex:I
    .restart local v10       #titleIndex:I
    .restart local v14       #iconTypeIndex:I
    .restart local v15       #iconPackageIndex:I
    .restart local v16       #iconResourceIndex:I
    .restart local v24       #appWidgetIdIndex:I
    .restart local v26       #cellXIndex:I
    .restart local v27       #cellYIndex:I
    .restart local v30       #containerIndex:I
    .restart local v31       #displayModeIndex:I
    .restart local v37       #idIndex:I
    .restart local v39       #intentDescription:Ljava/lang/String;
    .restart local v40       #intentIndex:I
    .restart local v42       #itemType:I
    .restart local v43       #itemTypeIndex:I
    .restart local v51       #screenIndex:I
    .restart local v52       #spanXIndex:I
    .restart local v53       #spanYIndex:I
    .restart local v57       #uriIndex:I
    :catch_1
    move-exception v32

    .local v32, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 759
    .end local v32           #e:Ljava/net/URISyntaxException;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    #calls: Lcom/softwinner/launcher/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/softwinner/launcher/ShortcutInfo;
    invoke-static/range {v11 .. v18}, Lcom/softwinner/launcher/LauncherModel;->access$700(Lcom/softwinner/launcher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/softwinner/launcher/ShortcutInfo;

    move-result-object v38

    .restart local v38       #info:Lcom/softwinner/launcher/ShortcutInfo;
    goto/16 :goto_1

    .line 782
    .restart local v29       #container:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 796
    .end local v29           #container:I
    :cond_2
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 797
    .local v35, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v4, 0x0

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v4}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    .end local v6           #intent:Landroid/content/Intent;
    .end local v35           #id:J
    .end local v38           #info:Lcom/softwinner/launcher/ShortcutInfo;
    .end local v39           #intentDescription:Ljava/lang/String;
    :pswitch_2
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 805
    .restart local v35       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v35

    #calls: Lcom/softwinner/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;
    invoke-static {v4, v0, v1}, Lcom/softwinner/launcher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;

    move-result-object v33

    .line 807
    .restart local v33       #folderInfo:Lcom/softwinner/launcher/UserFolderInfo;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/softwinner/launcher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 809
    move-wide/from16 v0, v35

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/softwinner/launcher/UserFolderInfo;->id:J

    .line 810
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 811
    .restart local v29       #container:I
    move/from16 v0, v29

    int-to-long v4, v0

    move-object/from16 v0, v33

    iput-wide v4, v0, Lcom/softwinner/launcher/UserFolderInfo;->container:J

    .line 812
    move/from16 v0, v51

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/softwinner/launcher/UserFolderInfo;->screen:I

    .line 813
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/softwinner/launcher/UserFolderInfo;->cellX:I

    .line 814
    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/softwinner/launcher/UserFolderInfo;->cellY:I

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/softwinner/launcher/ItemInfo;Lcom/softwinner/launcher/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    packed-switch v29, :pswitch_data_2

    .line 827
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/softwinner/launcher/UserFolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 823
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 831
    .end local v29           #container:I
    .end local v33           #folderInfo:Lcom/softwinner/launcher/UserFolderInfo;
    .end local v35           #id:J
    :pswitch_4
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 832
    .restart local v35       #id:J
    move/from16 v0, v57

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v56

    .line 835
    .local v56, uri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {v56 .. v56}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v49

    .line 839
    .local v49, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v49, :cond_3

    if-nez v41, :cond_3

    .line 840
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 842
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v35

    #calls: Lcom/softwinner/launcher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;
    invoke-static {v4, v0, v1}, Lcom/softwinner/launcher/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;

    move-result-object v22

    .line 844
    .local v22, liveFolderInfo:Lcom/softwinner/launcher/LiveFolderInfo;
    move/from16 v0, v40

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v39

    .line 845
    .restart local v39       #intentDescription:Ljava/lang/String;
    const/4 v6, 0x0

    .line 846
    .restart local v6       #intent:Landroid/content/Intent;
    if-eqz v39, :cond_4

    .line 848
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v6

    .line 854
    :cond_4
    :goto_3
    :try_start_7
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 855
    move-wide/from16 v0, v35

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/softwinner/launcher/LiveFolderInfo;->id:J

    .line 856
    move-object/from16 v0, v56

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/softwinner/launcher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 857
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 858
    .restart local v29       #container:I
    move/from16 v0, v29

    int-to-long v4, v0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->container:J

    .line 859
    move/from16 v0, v51

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->screen:I

    .line 860
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->cellX:I

    .line 861
    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->cellY:I

    .line 862
    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/softwinner/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 863
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/softwinner/launcher/LiveFolderInfo;->displayMode:I

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/softwinner/launcher/ItemInfo;Lcom/softwinner/launcher/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v17, v13

    move-object/from16 v18, v8

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v16

    .line 870
    #calls: Lcom/softwinner/launcher/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/softwinner/launcher/LiveFolderInfo;)V
    invoke-static/range {v17 .. v22}, Lcom/softwinner/launcher/LauncherModel;->access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/softwinner/launcher/LiveFolderInfo;)V

    .line 873
    packed-switch v29, :pswitch_data_3

    .line 878
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-wide v11, v0, Lcom/softwinner/launcher/LiveFolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 875
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 884
    .end local v6           #intent:Landroid/content/Intent;
    .end local v22           #liveFolderInfo:Lcom/softwinner/launcher/LiveFolderInfo;
    .end local v29           #container:I
    .end local v35           #id:J
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v49           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v56           #uri:Landroid/net/Uri;
    :pswitch_6
    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 885
    .local v23, appWidgetId:I
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 887
    .restart local v35       #id:J
    move-object/from16 v0, v58

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v48

    .line 890
    .local v48, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v41, :cond_6

    if-eqz v48, :cond_5

    move-object/from16 v0, v48

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    move-object/from16 v0, v48

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 892
    :cond_5
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " appWidgetId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 897
    :cond_6
    new-instance v25, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/softwinner/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 898
    .local v25, appWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    move-wide/from16 v0, v35

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->id:J

    .line 899
    move/from16 v0, v51

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->screen:I

    .line 900
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 901
    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 902
    move/from16 v0, v52

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 903
    move/from16 v0, v53

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 905
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 906
    .restart local v29       #container:I
    const/16 v4, -0x64

    move/from16 v0, v29

    if-eq v0, v4, :cond_7

    .line 907
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 911
    :cond_7
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v25

    iput-wide v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->container:J

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/softwinner/launcher/ItemInfo;Lcom/softwinner/launcher/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v4, v4, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 927
    .end local v23           #appWidgetId:I
    .end local v25           #appWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    .end local v29           #container:I
    .end local v35           #id:J
    .end local v42           #itemType:I
    .end local v48           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 930
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 931
    sget-object v4, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v28

    .line 934
    .local v28, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 936
    .restart local v35       #id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v4, 0x0

    :try_start_8
    move-wide/from16 v0, v35

    invoke-static {v0, v1, v4}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 942
    :catch_2
    move-exception v32

    .line 943
    .local v32, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 949
    .end local v28           #client:Landroid/content/ContentProviderClient;
    .end local v32           #e:Landroid/os/RemoteException;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    :cond_9
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded workspace in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v54

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v4, "Launcher.Model"

    const-string v5, "workspace layout: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/16 v60, 0x0

    .local v60, y:I
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v60

    if-ge v0, v4, :cond_e

    .line 952
    const-string v45, ""

    .line 953
    .local v45, line:Ljava/lang/String;
    const/16 v50, 0x0

    .local v50, s:I
    :goto_7
    const/4 v4, 0x1

    move/from16 v0, v50

    if-ge v0, v4, :cond_d

    .line 954
    if-lez v50, :cond_a

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 957
    :cond_a
    const/16 v59, 0x0

    .local v59, x:I
    :goto_8
    const/4 v4, 0x6

    move/from16 v0, v59

    if-ge v0, v4, :cond_c

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v47, v50

    aget-object v4, v4, v59

    aget-object v4, v4, v60

    if-eqz v4, :cond_b

    const-string v4, "#"

    :goto_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 957
    add-int/lit8 v59, v59, 0x1

    goto :goto_8

    .line 958
    :cond_b
    const-string v4, "."

    goto :goto_9

    .line 953
    :cond_c
    add-int/lit8 v50, v50, 0x1

    goto :goto_7

    .line 961
    .end local v59           #x:I
    :cond_d
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    add-int/lit8 v60, v60, 0x1

    goto :goto_6

    .line 849
    .end local v45           #line:Ljava/lang/String;
    .end local v50           #s:I
    .end local v60           #y:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v22       #liveFolderInfo:Lcom/softwinner/launcher/LiveFolderInfo;
    .restart local v35       #id:J
    .restart local v39       #intentDescription:Ljava/lang/String;
    .restart local v42       #itemType:I
    .restart local v49       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v56       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v4

    goto/16 :goto_3

    .line 964
    .end local v6           #intent:Landroid/content/Intent;
    .end local v22           #liveFolderInfo:Lcom/softwinner/launcher/LiveFolderInfo;
    .end local v35           #id:J
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v42           #itemType:I
    .end local v49           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v56           #uri:Landroid/net/Uri;
    .restart local v60       #y:I
    :cond_e
    return-void

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 780
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 821
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_3
    .end packed-switch

    .line 873
    :pswitch_data_3
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 1093
    .local v1, oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1095
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1102
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 452
    .local v0, workspaceWaitTime:J
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/softwinner/launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$1;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/softwinner/launcher/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 464
    :goto_0
    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 466
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    goto :goto_0

    .line 472
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    monitor-exit p0

    .line 477
    return-void

    .line 476
    .end local v0           #workspaceWaitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1232
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mWaitThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 484
    .local v0, cbk:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 489
    .local v1, loadWorkspaceFirst:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/softwinner/launcher/LauncherModel;->access$300(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 490
    :try_start_0
    iget-boolean v5, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 492
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadFavoritesApp()Z

    .line 496
    if-eqz v1, :cond_4

    .line 497
    const-string v2, "Launcher.Model"

    const-string v3, "step 1: loading workspace"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 504
    :goto_2
    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_5

    .line 529
    :goto_3
    iput-object v6, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 531
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$300(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 533
    :try_start_1
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$400(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 534
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    const/4 v4, 0x0

    #setter for: Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    invoke-static {v2, v4}, Lcom/softwinner/launcher/LauncherModel;->access$402(Lcom/softwinner/launcher/LauncherModel;Lcom/softwinner/launcher/LauncherModel$LoaderTask;)Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    .line 536
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 540
    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_8

    .line 541
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/softwinner/launcher/LauncherModel$LoaderTask$2;

    invoke-direct {v3, p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$2;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 553
    :goto_4
    return-void

    .end local v1           #loadWorkspaceFirst:Z
    :cond_2
    move v1, v2

    .line 484
    goto :goto_0

    .restart local v1       #loadWorkspaceFirst:Z
    :cond_3
    move v2, v3

    .line 490
    goto :goto_1

    .line 492
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 500
    :cond_4
    const-string v2, "Launcher.Model"

    const-string v3, "step 1: special: loading all apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_2

    .line 510
    :cond_5
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$300(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 511
    :try_start_3
    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v2, :cond_6

    .line 512
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 514
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 515
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->waitForIdle()V

    .line 518
    if-eqz v1, :cond_7

    .line 519
    const-string v2, "Launcher.Model"

    const-string v3, "step 2: loading all apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_3

    .line 514
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 522
    :cond_7
    const-string v2, "Launcher.Model"

    const-string v3, "step 2: special: loading workspace"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_3

    .line 536
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 547
    :cond_8
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/softwinner/launcher/LauncherModel$LoaderTask$3;

    invoke-direct {v3, p0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask$3;-><init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/softwinner/launcher/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 556
    monitor-enter p0

    .line 557
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 559
    monitor-exit p0

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/softwinner/launcher/LauncherModel;->access$300(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 571
    :try_start_0
    iget-boolean v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 572
    monitor-exit v2

    move-object v0, v1

    .line 588
    :goto_0
    return-object v0

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 576
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 579
    :cond_1
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    #getter for: Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/softwinner/launcher/LauncherModel;->access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 580
    .local v0, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 581
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 583
    :cond_2
    if-nez v0, :cond_3

    .line 584
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 588
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 589
    .end local v0           #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
