.class public Lcom/softwinner/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static mApp:Lcom/softwinner/launcher/LauncherApplication;

.field public static mIconCache:Lcom/softwinner/launcher/IconCache;

.field public static mLauncher:Lcom/softwinner/launcher/Launcher;

.field public static mModel:Lcom/softwinner/launcher/LauncherModel;


# instance fields
.field private final mFavoritesAppObserver:Landroid/database/ContentObserver;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 84
    new-instance v0, Lcom/softwinner/launcher/LauncherApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/softwinner/launcher/LauncherApplication$1;-><init>(Lcom/softwinner/launcher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/softwinner/launcher/LauncherApplication$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/softwinner/launcher/LauncherApplication$2;-><init>(Lcom/softwinner/launcher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesAppObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getIconCache()Lcom/softwinner/launcher/IconCache;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mIconCache:Lcom/softwinner/launcher/IconCache;

    return-object v0
.end method

.method public static getLauncher()Lcom/softwinner/launcher/Launcher;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mLauncher:Lcom/softwinner/launcher/Launcher;

    return-object v0
.end method

.method public static getModel()Lcom/softwinner/launcher/LauncherModel;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    if-nez v0, :cond_0

    .line 99
    sput-object p0, Lcom/softwinner/launcher/LauncherApplication;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    .line 101
    :cond_0
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mIconCache:Lcom/softwinner/launcher/IconCache;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/softwinner/launcher/IconCache;

    sget-object v1, Lcom/softwinner/launcher/LauncherApplication;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    invoke-direct {v0, v1}, Lcom/softwinner/launcher/IconCache;-><init>(Lcom/softwinner/launcher/LauncherApplication;)V

    sput-object v0, Lcom/softwinner/launcher/LauncherApplication;->mIconCache:Lcom/softwinner/launcher/IconCache;

    .line 104
    :cond_1
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lcom/softwinner/launcher/LauncherModel;

    sget-object v1, Lcom/softwinner/launcher/LauncherApplication;->mApp:Lcom/softwinner/launcher/LauncherApplication;

    sget-object v2, Lcom/softwinner/launcher/LauncherApplication;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel;-><init>(Lcom/softwinner/launcher/LauncherApplication;Lcom/softwinner/launcher/IconCache;)V

    sput-object v0, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    .line 107
    :cond_2
    return-void
.end method

.method public static setLauncher(Lcom/softwinner/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 63
    sput-object p0, Lcom/softwinner/launcher/LauncherApplication;->mLauncher:Lcom/softwinner/launcher/Launcher;

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 38
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x400000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcom/softwinner/launcher/LauncherApplication;->init()V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/softwinner/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/softwinner/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/softwinner/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    sget-object v2, Lcom/softwinner/launcher/LauncherSettings$FavoritesApp;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 73
    sget-object v1, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    sget-object v1, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/softwinner/launcher/LauncherModel;->stopLoader()V

    .line 76
    invoke-virtual {p0}, Lcom/softwinner/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherApplication;->mFavoritesAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    return-void
.end method
