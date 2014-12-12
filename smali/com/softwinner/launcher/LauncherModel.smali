.class public Lcom/softwinner/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;,
        Lcom/softwinner/launcher/LauncherModel$LoaderTask;,
        Lcom/softwinner/launcher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_LOADERS:Z = true

.field private static final ITEMS_CHUNK:I = 0x6

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field private static final sCollator:Ljava/text/Collator;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/softwinner/launcher/LauncherApplication;

.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchSize:I

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/softwinner/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/softwinner/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/softwinner/launcher/DeferredHandler;

.field private mIconCache:Lcom/softwinner/launcher/IconCache;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/softwinner/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 79
    sget-object v0, Lcom/softwinner/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/softwinner/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 1716
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/softwinner/launcher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 1717
    new-instance v0, Lcom/softwinner/launcher/LauncherModel$4;

    invoke-direct {v0}, Lcom/softwinner/launcher/LauncherModel$4;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/softwinner/launcher/LauncherApplication;Lcom/softwinner/launcher/IconCache;)V
    .locals 2
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/softwinner/launcher/DeferredHandler;

    invoke-direct {v0}, Lcom/softwinner/launcher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 1724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;

    .line 120
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    .line 121
    new-instance v0, Lcom/softwinner/launcher/AllAppsList;

    invoke-direct {v0, p2}, Lcom/softwinner/launcher/AllAppsList;-><init>(Lcom/softwinner/launcher/IconCache;)V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    .line 122
    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;

    .line 124
    invoke-virtual {p1}, Lcom/softwinner/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p1}, Lcom/softwinner/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I

    .line 129
    invoke-virtual {p1}, Lcom/softwinner/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/softwinner/launcher/LauncherModel;->mBatchSize:I

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mHandler:Lcom/softwinner/launcher/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/softwinner/launcher/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 64
    invoke-static/range {p0 .. p5}, Lcom/softwinner/launcher/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/softwinner/launcher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/softwinner/launcher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/softwinner/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/softwinner/launcher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/softwinner/launcher/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/softwinner/launcher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/softwinner/launcher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/softwinner/launcher/LauncherModel;)Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/softwinner/launcher/LauncherModel;Lcom/softwinner/launcher/LauncherModel$LoaderTask;)Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/softwinner/launcher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/softwinner/launcher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/softwinner/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/softwinner/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/softwinner/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/softwinner/launcher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p7}, Lcom/softwinner/launcher/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/softwinner/launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/softwinner/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/softwinner/launcher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIIIZ)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 323
    iput-wide p2, p1, Lcom/softwinner/launcher/ItemInfo;->container:J

    .line 324
    iput p4, p1, Lcom/softwinner/launcher/ItemInfo;->screen:I

    .line 325
    iput p5, p1, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .line 326
    iput p6, p1, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .line 328
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/softwinner/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 333
    if-eqz p7, :cond_1

    sget-object v3, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/softwinner/launcher/ItemInfo;->id:J

    .line 339
    :cond_0
    return-void

    .line 333
    .end local v1           #result:Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 264
    iget-wide v0, p1, Lcom/softwinner/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/softwinner/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIIIZ)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/softwinner/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method public static delFavoritesAppFromDataBase(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "context"
    .parameter "cn"

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/softwinner/launcher/LauncherSettings$FavoritesApp;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "className"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 238
    sget-object v1, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/softwinner/launcher/LauncherModel$1;

    invoke-direct {v2, v6, v0, p0}, Lcom/softwinner/launcher/LauncherModel$1;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :cond_0
    return-void
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v2, p1, Lcom/softwinner/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 361
    .local v1, uriToDelete:Landroid/net/Uri;
    sget-object v2, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v3, Lcom/softwinner/launcher/LauncherModel$3;

    invoke-direct {v3, v0, v1}, Lcom/softwinner/launcher/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/softwinner/launcher/UserFolderInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/softwinner/launcher/UserFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    sget-object v1, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/softwinner/launcher/UserFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/softwinner/launcher/FolderInfo;",
            ">;J)",
            "Lcom/softwinner/launcher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1696
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/softwinner/launcher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/FolderInfo;

    .line 1697
    .local v0, folderInfo:Lcom/softwinner/launcher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/softwinner/launcher/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1699
    :cond_0
    new-instance v0, Lcom/softwinner/launcher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/softwinner/launcher/LiveFolderInfo;-><init>()V

    .line 1700
    .restart local v0       #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    :cond_1
    check-cast v0, Lcom/softwinner/launcher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/softwinner/launcher/FolderInfo;",
            ">;J)",
            "Lcom/softwinner/launcher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1681
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/softwinner/launcher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/FolderInfo;

    .line 1682
    .local v0, folderInfo:Lcom/softwinner/launcher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/softwinner/launcher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1684
    :cond_0
    new-instance v0, Lcom/softwinner/launcher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/softwinner/launcher/UserFolderInfo;-><init>()V

    .line 1685
    .restart local v0       #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    :cond_1
    check-cast v0, Lcom/softwinner/launcher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    return-object v0
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 1706
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1708
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1709
    if-nez v0, :cond_0

    .line 1710
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1713
    :cond_0
    return-object v0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 11
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1466
    const/4 v1, 0x0

    .line 1467
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/softwinner/launcher/ShortcutInfo;

    invoke-direct {v4}, Lcom/softwinner/launcher/ShortcutInfo;-><init>()V

    .line 1468
    .local v4, info:Lcom/softwinner/launcher/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->itemType:I

    .line 1472
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1474
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1475
    .local v2, iconType:I
    packed-switch v2, :pswitch_data_0

    .line 1512
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1513
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1514
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    .line 1517
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/softwinner/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1518
    return-object v4

    .line 1477
    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1478
    .local v6, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1479
    .local v7, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1480
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    .line 1483
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1484
    .local v8, resources:Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 1485
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1486
    .local v3, id:I
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1492
    .end local v3           #id:I
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1493
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0}, Lcom/softwinner/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1496
    :cond_2
    if-nez v1, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1498
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1502
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #resourceName:Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0}, Lcom/softwinner/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1503
    if-nez v1, :cond_3

    .line 1504
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1505
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    .line 1506
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1508
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1488
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v7       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 17
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1569
    const-string v14, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 1570
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1571
    .local v11, name:Ljava/lang/String;
    const-string v14, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1573
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 1574
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 1575
    .local v5, filtered:Z
    const/4 v2, 0x0

    .line 1576
    .local v2, customIcon:Z
    const/4 v7, 0x0

    .line 1578
    .local v7, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_2

    instance-of v14, v1, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_2

    .line 1579
    new-instance v14, Lcom/softwinner/launcher/FastBitmapDrawable;

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v14, v1}, Lcom/softwinner/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1580
    const/4 v5, 0x1

    .line 1581
    const/4 v2, 0x1

    .line 1598
    :cond_0
    :goto_0
    new-instance v9, Lcom/softwinner/launcher/ShortcutInfo;

    invoke-direct {v9}, Lcom/softwinner/launcher/ShortcutInfo;-><init>()V

    .line 1600
    .local v9, info:Lcom/softwinner/launcher/ShortcutInfo;
    if-nez v6, :cond_1

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/softwinner/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1602
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1604
    :cond_1
    invoke-virtual {v9, v6}, Lcom/softwinner/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1606
    iput-object v11, v9, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1607
    iput-object v10, v9, Lcom/softwinner/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1608
    iput-boolean v2, v9, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    .line 1609
    iput-object v7, v9, Lcom/softwinner/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1611
    return-object v9

    .line 1583
    .end local v9           #info:Lcom/softwinner/launcher/ShortcutInfo;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_2
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 1584
    .local v4, extra:Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    instance-of v14, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v14, :cond_0

    .line 1586
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    .line 1587
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1588
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1590
    .local v13, resources:Landroid/content/res/Resources;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1591
    .local v8, id:I
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1592
    .end local v8           #id:I
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 1593
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load shortcut icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/softwinner/launcher/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f020022

    .line 1617
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1618
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 1638
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1642
    :goto_0
    return-void

    .line 1620
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1621
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1622
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1624
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1625
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1626
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1634
    iget-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1635
    iget-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/softwinner/launcher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static moveItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 278
    iput-wide p2, p1, Lcom/softwinner/launcher/ItemInfo;->container:J

    .line 279
    iput p4, p1, Lcom/softwinner/launcher/ItemInfo;->screen:I

    .line 280
    iput p5, p1, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .line 281
    iput p6, p1, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .line 283
    iget-wide v3, p1, Lcom/softwinner/launcher/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 284
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/softwinner/launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string v3, "cellX"

    iget v4, p1, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v3, "cellY"

    iget v4, p1, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v3, "screen"

    iget v4, p1, Lcom/softwinner/launcher/ItemInfo;->screen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    sget-object v3, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/softwinner/launcher/LauncherModel$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel$2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method public static setFavoritesApp(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 11
    .parameter "context"
    .parameter "cn"
    .parameter "isAdd"

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 213
    .local v4, time:J
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, className:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "packageName"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v7, "className"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 220
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v7, Lcom/softwinner/launcher/LauncherSettings$FavoritesApp;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 221
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 222
    const v7, 0x7f0a0011

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 225
    :cond_0
    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save favoriteApp time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 310
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    return v7

    .line 312
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 345
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/softwinner/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 350
    iget-wide v2, p1, Lcom/softwinner/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/softwinner/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    return-void
.end method


# virtual methods
.method public addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/softwinner/launcher/ui/CellLayout$CellInfo;Z)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 1537
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/softwinner/launcher/ShortcutInfo;

    move-result-object v1

    .line 1538
    .local v1, info:Lcom/softwinner/launcher/ShortcutInfo;
    const-wide/16 v2, -0x64

    iget v4, p3, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->screen:I

    iget v5, p3, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    iget v6, p3, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    move-object v0, p1

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/softwinner/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIIIZ)V

    .line 1541
    return-object v1
.end method

.method public addWidgetRumtime(Landroid/appwidget/AppWidgetProviderInfo;ILcom/softwinner/launcher/LauncherAppWidgetInfo;)Z
    .locals 14
    .parameter "appWidgetInfo"
    .parameter "appWidgetId"
    .parameter "launcherInfo"

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-object v9, v1

    .line 1547
    .local v9, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :goto_0
    if-eqz v9, :cond_1

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->getCellLayout(I)Lcom/softwinner/launcher/ui/CellLayout;

    move-result-object v11

    .line 1548
    .local v11, layout:Lcom/softwinner/launcher/ui/CellLayout;
    :goto_1
    if-eqz v9, :cond_3

    if-eqz v11, :cond_3

    .line 1549
    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v11, v1, v2}, Lcom/softwinner/launcher/ui/CellLayout;->rectToCell(II)[I

    move-result-object v12

    .line 1550
    .local v12, spans:[I
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 1551
    .local v13, xy:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/softwinner/launcher/ui/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    move-result-object v10

    .line 1552
    .local v10, cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-virtual {v10, v13, v1, v2}, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1554
    const/4 v1, 0x0

    .line 1565
    .end local v10           #cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    .end local v12           #spans:[I
    .end local v13           #xy:[I
    :goto_2
    return v1

    .line 1546
    .end local v9           #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    .end local v11           #layout:Lcom/softwinner/launcher/ui/CellLayout;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1547
    .restart local v9       #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1556
    .restart local v10       #cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    .restart local v11       #layout:Lcom/softwinner/launcher/ui/CellLayout;
    .restart local v12       #spans:[I
    .restart local v13       #xy:[I
    :cond_2
    const/4 v1, 0x0

    aget v1, v12, v1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 1557
    const/4 v1, 0x1

    aget v1, v12, v1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 1559
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    const-wide/16 v3, -0x64

    invoke-interface {v9}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v5

    const/4 v2, 0x0

    aget v6, v13, v2

    const/4 v2, 0x1

    aget v7, v13, v2

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lcom/softwinner/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIIIZ)V

    .line 1562
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    .line 1563
    const/4 v1, 0x1

    goto :goto_2

    .line 1565
    .end local v10           #cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    .end local v12           #spans:[I
    .end local v13           #xy:[I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public appFiltrate(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter "contain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1733
    .local p1, originList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    if-nez p1, :cond_0

    .line 1734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    :goto_0
    return-object v1

    .line 1737
    :cond_0
    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1738
    if-eqz p2, :cond_2

    .line 1739
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1740
    .local v1, filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 1741
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1742
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1753
    .end local v0           #app:Lcom/softwinner/launcher/ApplicationInfo;
    .end local v1           #filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1746
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    .restart local v1       #filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 1748
    .restart local v0       #app:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel;->mFilterList:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1749
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1753
    .end local v0           #app:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1758
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    iget-object v2, v2, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/softwinner/launcher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1760
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    iget-object v2, v2, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/softwinner/launcher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1761
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    iget-object v2, v2, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/softwinner/launcher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1762
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsList:Lcom/softwinner/launcher/AllAppsList;

    iget-object v2, v2, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/softwinner/launcher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1763
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->dumpState()V

    .line 1769
    :goto_0
    return-void

    .line 1767
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enqueuePackageUpdated(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1241
    sget-object v0, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1242
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/softwinner/launcher/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/softwinner/launcher/FolderInfo;",
            ">;J)",
            "Lcom/softwinner/launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/softwinner/launcher/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1352
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1359
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1360
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1361
    .local v13, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1362
    .local v15, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1363
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1364
    .local v14, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1365
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1367
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 1368
    .local v12, folderInfo:Lcom/softwinner/launcher/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1377
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/softwinner/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1378
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/softwinner/launcher/FolderInfo;->id:J

    .line 1379
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/softwinner/launcher/FolderInfo;->container:J

    .line 1380
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/softwinner/launcher/FolderInfo;->screen:I

    .line 1381
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/softwinner/launcher/FolderInfo;->cellX:I

    .line 1382
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/softwinner/launcher/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1390
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :goto_1
    return-object v12

    .line 1370
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/softwinner/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/UserFolderInfo;

    move-result-object v12

    .line 1371
    goto :goto_0

    .line 1373
    :pswitch_1
    invoke-static/range {p2 .. p4}, Lcom/softwinner/launcher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/softwinner/launcher/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 1387
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/softwinner/launcher/FolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1390
    const/4 v12, 0x0

    goto :goto_1

    .line 1387
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1526
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1528
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1530
    :goto_0
    return-object v2

    .line 1529
    :catch_0
    move-exception v1

    .line 1530
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 1399
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/softwinner/launcher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/softwinner/launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/softwinner/launcher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/softwinner/launcher/ShortcutInfo;

    invoke-direct {v2}, Lcom/softwinner/launcher/ShortcutInfo;-><init>()V

    .line 1412
    .local v2, info:Lcom/softwinner/launcher/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1413
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1414
    const/4 v2, 0x0

    .line 1456
    .end local v2           #info:Lcom/softwinner/launcher/ShortcutInfo;
    :goto_0
    return-object v2

    .line 1424
    .restart local v2       #info:Lcom/softwinner/launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1425
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1426
    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/softwinner/launcher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1429
    :cond_1
    if-nez v1, :cond_2

    .line 1430
    if-eqz p4, :cond_2

    .line 1431
    invoke-virtual {p0, p4, p5}, Lcom/softwinner/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1435
    :cond_2
    if-nez v1, :cond_3

    .line 1436
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1437
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1439
    :cond_3
    invoke-virtual {v2, v1}, Lcom/softwinner/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1442
    if-eqz v3, :cond_4

    .line 1443
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1446
    :cond_4
    iget-object v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1447
    if-eqz p4, :cond_5

    .line 1448
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1452
    :cond_5
    iget-object v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1453
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/softwinner/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1455
    :cond_6
    iput v5, v2, Lcom/softwinner/launcher/ShortcutInfo;->itemType:I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 138
    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, packageName:Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 148
    .local v5, replacing:Z
    const/4 v2, 0x0

    .line 150
    .local v2, op:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 200
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 155
    .restart local v2       #op:I
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v5       #replacing:Z
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    const/4 v2, 0x2

    .line 171
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 172
    new-instance v7, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;

    new-array v8, v11, [Ljava/lang/String;

    aput-object v3, v8, v10

    invoke-direct {v7, p0, v2, v8}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;-><init>(Lcom/softwinner/launcher/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/softwinner/launcher/LauncherModel;->enqueuePackageUpdated(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 157
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 158
    if-nez v5, :cond_3

    .line 159
    const/4 v2, 0x3

    goto :goto_1

    .line 163
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    if-nez v5, :cond_6

    .line 165
    const/4 v2, 0x1

    goto :goto_1

    .line 167
    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    .line 175
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 177
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, packages:[Ljava/lang/String;
    new-instance v7, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v11, v4}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;-><init>(Lcom/softwinner/launcher/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/softwinner/launcher/LauncherModel;->enqueuePackageUpdated(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;)V

    .line 180
    const/4 v6, 0x1

    .line 181
    .local v6, runLoader:Z
    iget-object v7, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_8

    .line 182
    iget-object v7, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/LauncherModel$Callbacks;

    .line 183
    .local v1, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v1, :cond_8

    .line 185
    invoke-interface {v1}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 186
    const/4 v6, 0x0

    .line 190
    .end local v1           #callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    :cond_8
    if-eqz v6, :cond_1

    .line 191
    iget-object v7, p0, Lcom/softwinner/launcher/LauncherModel;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    invoke-virtual {p0, v7, v10}, Lcom/softwinner/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 194
    .end local v4           #packages:[Ljava/lang/String;
    .end local v6           #runLoader:Z
    :cond_9
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 196
    .restart local v4       #packages:[Ljava/lang/String;
    new-instance v7, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v4}, Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;-><init>(Lcom/softwinner/launcher/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/softwinner/launcher/LauncherModel;->enqueuePackageUpdated(Lcom/softwinner/launcher/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public setAllAppsLoaded(Z)V
    .locals 0
    .parameter "load"

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/softwinner/launcher/LauncherModel;->mAllAppsLoaded:Z

    .line 422
    return-void
.end method

.method public setCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 390
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    const-string v1, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLoader isLaunching="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    .line 398
    .local v0, oldTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const/4 p2, 0x1

    .line 403
    :cond_0
    invoke-virtual {v0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 405
    :cond_1
    new-instance v1, Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;-><init>(Lcom/softwinner/launcher/LauncherModel;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    .line 406
    sget-object v1, Lcom/softwinner/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    .end local v0           #oldTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;
    :cond_2
    monitor-exit v2

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel;->mLoaderTask:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 416
    :cond_0
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSavedIcon(Landroid/content/Context;Lcom/softwinner/launcher/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v3, 0x0

    .line 1651
    iget-boolean v5, p2, Lcom/softwinner/launcher/ShortcutInfo;->customIcon:Z

    if-nez v5, :cond_1

    iget-boolean v5, p2, Lcom/softwinner/launcher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_1

    .line 1653
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1655
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1656
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1657
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/softwinner/launcher/LauncherModel;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {p2, v5}, Lcom/softwinner/launcher/ShortcutInfo;->getIcon(Lcom/softwinner/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1658
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 1665
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1666
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to save icon bitmap for info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {p1, p2}, Lcom/softwinner/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;)V

    .line 1673
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_1
    return-void

    .line 1660
    .restart local v0       #data:[B
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0

    .line 1662
    .end local v3           #needSave:Z
    :catch_0
    move-exception v1

    .line 1663
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0
.end method
