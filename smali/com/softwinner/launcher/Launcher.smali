.class public final Lcom/softwinner/launcher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_USER_INTERFACE:Z = false

.field static final DEBUG_WIDGETS:Z = false

.field static final DEFAULT_SCREEN:I = 0x1

.field static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field public static final LAUNCHER_CATEGORY_START_APP:Ljava/lang/String; = "com.softwinner.category.app"

.field static final LOGD:Z = true

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_GROUP_ADD:I = 0x1

.field private static final MENU_GROUP_WALLPAPER:I = 0x2

.field private static final MENU_MANAGE_APPS:I = 0x3

.field private static final MENU_NOTIFICATIONS:I = 0x6

.field private static final MENU_SEARCH:I = 0x5

.field private static final MENU_SETTINGS:I = 0x7

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x4

.field static final NUMBER_CELLS_X:I = 0x6

.field static final NUMBER_CELLS_Y:I = 0x4

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_LIVE_FOLDER:I = 0x4

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_LIVE_FOLDER:I = 0x8

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE_ALL_APPS_FOLDER:Ljava/lang/String; = "launcher.all_apps_folder"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cellX"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cellY"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_X:Ljava/lang/String; = "launcher.add_countX"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_Y:Ljava/lang/String; = "launcher.add_countY"

.field private static final RUNTIME_STATE_PENDING_ADD_OCCUPIED_CELLS:Ljava/lang/String; = "launcher.add_occupied_cells"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_spanX"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_spanY"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field private static final RUNTIME_STATE_USER_FOLDERS:Ljava/lang/String; = "launcher.user_folder"

.field static final SCREEN_COUNT:I = 0x1

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static sFolders:Ljava/util/HashMap;
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

.field private static sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sScreen:I


# instance fields
.field private mAddItemCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

.field private mAllAppsGrid:Lcom/softwinner/launcher/IAllAppsView;

.field private mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsFavorites:Lcom/softwinner/launcher/IAllAppsView;

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field public mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/softwinner/launcher/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/softwinner/launcher/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mPaused:Z

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/softwinner/launcher/ActivityRuntimeInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Launcher;->sLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    sput v0, Lcom/softwinner/launcher/Launcher;->sScreen:I

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Launcher;->sFolders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    new-instance v0, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/softwinner/launcher/Launcher;Lcom/softwinner/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/softwinner/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/softwinner/launcher/Launcher;)V

    iput-object v0, p0, Lcom/softwinner/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/softwinner/launcher/Launcher;->mCellCoordinates:[I

    .line 149
    iput-boolean v2, p0, Lcom/softwinner/launcher/Launcher;->mWorkspaceLoading:Z

    .line 151
    iput-boolean v2, p0, Lcom/softwinner/launcher/Launcher;->mPaused:Z

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 731
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/softwinner/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$302(Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/softwinner/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/softwinner/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$600(Lcom/softwinner/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$700(Lcom/softwinner/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mPaused:Z

    return v0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 380
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 381
    new-instance v9, Lcom/softwinner/launcher/Launcher$1;

    invoke-direct {v9, p0}, Lcom/softwinner/launcher/Launcher$1;-><init>(Lcom/softwinner/launcher/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/softwinner/launcher/Launcher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 400
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 401
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 404
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 406
    .local v4, mcc:I
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 407
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 409
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 411
    .local v2, localeChanged:Z
    :cond_3
    if-eqz v2, :cond_0

    .line 412
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 413
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 414
    sget-object v9, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 416
    iget-object v9, p0, Lcom/softwinner/launcher/Launcher;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v9}, Lcom/softwinner/launcher/IconCache;->flush()V

    .line 418
    sget-object v3, Lcom/softwinner/launcher/Launcher;->sLocaleConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    .line 419
    .local v3, localeConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/softwinner/launcher/Launcher$2;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/softwinner/launcher/Launcher$2;-><init>(Lcom/softwinner/launcher/Launcher;Ljava/lang/String;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/softwinner/launcher/Launcher$2;->start()V

    goto :goto_0
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/softwinner/launcher/ui/CellLayout$CellInfo;)V
    .locals 7
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 627
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 628
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "appWidgetId"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    .local v0, appWidgetId:I
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumping extras content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v4, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 634
    .local v1, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    invoke-direct {v3, v0}, Lcom/softwinner/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 635
    .local v3, launcherInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 636
    iget-object v4, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4, p0, v0, v1}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 637
    iget-object v4, v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 638
    iget-object v4, v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 640
    iget-object v4, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {v4, v1, v0, v3}, Lcom/softwinner/launcher/LauncherModel;->addWidgetRumtime(Landroid/appwidget/AppWidgetProviderInfo;ILcom/softwinner/launcher/LauncherAppWidgetInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4, v0}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 642
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 645
    :cond_0
    return-void
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->startListening()V

    .line 618
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 437
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 438
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 439
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 445
    if-eqz v1, :cond_2

    .line 447
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 453
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 448
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 450
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 440
    :catch_1
    move-exception v2

    .line 445
    :goto_1
    if-eqz v0, :cond_0

    .line 447
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 448
    :catch_2
    move-exception v2

    goto :goto_0

    .line 442
    :catch_3
    move-exception v2

    .line 445
    :goto_2
    if-eqz v0, :cond_0

    .line 447
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 448
    :catch_4
    move-exception v2

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 447
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 450
    :cond_1
    :goto_4
    throw v2

    .line 448
    :catch_5
    move-exception v3

    goto :goto_4

    .line 445
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 442
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 440
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 689
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/softwinner/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/softwinner/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 691
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 527
    return-void
.end method

.method private setWallpaperDimension()V
    .locals 5

    .prologue
    .line 480
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/softwinner/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 481
    .local v3, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 483
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 484
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 493
    .local v1, height:I
    invoke-virtual {v3, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 495
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 533
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/Launcher;->setContentView(I)V

    .line 535
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/WorkSpace;

    .line 536
    .local v0, mainLayout:Lcom/softwinner/launcher/ui/WorkSpace;
    invoke-virtual {v0, p0}, Lcom/softwinner/launcher/ui/WorkSpace;->setLauncher(Lcom/softwinner/launcher/Launcher;)V

    .line 537
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/softwinner/launcher/LauncherModel;->setCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)V

    .line 538
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    .line 539
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 456
    const/4 v1, 0x0

    .line 458
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 459
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 460
    iget v3, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    iget v3, p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 462
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 469
    if-eqz v2, :cond_2

    .line 471
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 477
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 472
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 474
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 463
    :catch_1
    move-exception v3

    .line 469
    :goto_1
    if-eqz v1, :cond_0

    .line 471
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 472
    :catch_2
    move-exception v3

    goto :goto_0

    .line 465
    :catch_3
    move-exception v0

    .line 467
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    if-eqz v1, :cond_0

    .line 471
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 472
    :catch_4
    move-exception v3

    goto :goto_0

    .line 469
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 471
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 474
    :cond_1
    :goto_4
    throw v3

    .line 472
    :catch_5
    move-exception v4

    goto :goto_4

    .line 469
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 465
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 463
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public addAppWidget(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x1

    .line 574
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 575
    .local v1, appWidgetId:I
    iget-object v3, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 577
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 579
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 581
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v2, v5}, Lcom/softwinner/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 588
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p0, v5, v4, p1}, Lcom/softwinner/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public closeSystemDialogs()V
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 656
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mWaitingForResult:Z

    .line 671
    return-void

    .line 658
    :catch_0
    move-exception v0

    goto :goto_0

    .line 665
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getAppWidgetHost()Lcom/softwinner/launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 288
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 289
    sparse-switch p1, :sswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/softwinner/launcher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :sswitch_1
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher;->mAddItemCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/softwinner/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/ActivityRuntimeInterface;

    move-object v0, v1

    .line 359
    .local v0, callback:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :goto_0
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lcom/softwinner/launcher/ActivityRuntimeInterface;->onBackPressed()V

    .line 362
    :cond_0
    return-void

    .line 358
    .end local v0           #callback:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher;->checkForLocaleChange()V

    .line 337
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/LauncherModel;->setAllAppsLoaded(Z)V

    .line 338
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/softwinner/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 339
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/ActivityRuntimeInterface;

    move-object v0, v1

    .line 340
    .local v0, callback:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :goto_0
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p1}, Lcom/softwinner/launcher/ActivityRuntimeInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    :cond_0
    return-void

    .line 339
    .end local v0           #callback:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    new-instance v6, Lcom/softwinner/launcher/LauncherAppWidgetHost;

    const/16 v7, 0x400

    invoke-direct {v6, p0, v7}, Lcom/softwinner/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    .line 184
    iget-object v6, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->startListening()V

    .line 186
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getModel()Lcom/softwinner/launcher/LauncherModel;

    move-result-object v6

    iput-object v6, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    .line 187
    invoke-static {p0}, Lcom/softwinner/launcher/LauncherApplication;->setLauncher(Lcom/softwinner/launcher/Launcher;)V

    .line 190
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getIconCache()Lcom/softwinner/launcher/IconCache;

    move-result-object v6

    iput-object v6, p0, Lcom/softwinner/launcher/Launcher;->mIconCache:Lcom/softwinner/launcher/IconCache;

    .line 192
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 194
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher;->setWallpaperDimension()V

    .line 197
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher;->setupViews()V

    .line 200
    iget-boolean v6, p0, Lcom/softwinner/launcher/Launcher;->mRestoring:Z

    if-nez v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v7, 0x1

    invoke-virtual {v6, p0, v7}, Lcom/softwinner/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/softwinner/launcher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/softwinner/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/softwinner/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v6, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 216
    .local v4, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 217
    .local v5, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v7, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 218
    .local v3, id:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 219
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1           #i:I
    .end local v3           #id:[I
    .end local v5           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/method/TextKeyListener;->release()V

    .line 261
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {v2}, Lcom/softwinner/launcher/LauncherModel;->stopLoader()V

    .line 263
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 265
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ActivityRuntimeInterface;

    .line 267
    .local v0, callbacks:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/softwinner/launcher/ActivityRuntimeInterface;->onDestroy()V

    .line 270
    :cond_0
    return-void

    .line 255
    .end local v0           #callbacks:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :catch_0
    move-exception v1

    .line 256
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 278
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive a new intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 280
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/ActivityRuntimeInterface;

    move-object v0, v1

    .line 281
    .local v0, callbacks:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1}, Lcom/softwinner/launcher/ActivityRuntimeInterface;->onNewIntent(Landroid/content/Intent;)V

    .line 284
    :cond_0
    return-void

    .line 280
    .end local v0           #callbacks:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mPaused:Z

    .line 247
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 332
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    iput-boolean v2, p0, Lcom/softwinner/launcher/Launcher;->mPaused:Z

    .line 230
    iget-boolean v1, p0, Lcom/softwinner/launcher/Launcher;->mRestoring:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/softwinner/launcher/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    iput-boolean v3, p0, Lcom/softwinner/launcher/Launcher;->mWorkspaceLoading:Z

    .line 232
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mModel:Lcom/softwinner/launcher/LauncherModel;

    invoke-virtual {v1, p0, v3}, Lcom/softwinner/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 233
    iput-boolean v2, p0, Lcom/softwinner/launcher/Launcher;->mRestoring:Z

    .line 234
    iput-boolean v2, p0, Lcom/softwinner/launcher/Launcher;->mOnResumeNeedsLoad:Z

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ActivityRuntimeInterface;

    .line 237
    .local v0, callbacks:Lcom/softwinner/launcher/ActivityRuntimeInterface;
    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v0}, Lcom/softwinner/launcher/ActivityRuntimeInterface;->onResume()V

    .line 240
    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 326
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/softwinner/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 372
    return v1
.end method

.method public pickAppWidget()V
    .locals 3

    .prologue
    .line 564
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher;->mAppWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 566
    .local v0, appWidgetId:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.softwinner.launcher.WIDGETS_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/softwinner/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 570
    return-void
.end method

.method public removeAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V
    .locals 5
    .parameter "launcherInfo"

    .prologue
    .line 591
    iget-object v3, p0, Lcom/softwinner/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 594
    move-object v2, p1

    .line 595
    .local v2, launcherAppWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    invoke-virtual {p0}, Lcom/softwinner/launcher/Launcher;->getAppWidgetHost()Lcom/softwinner/launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 596
    .local v0, appWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 597
    iget v1, v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 600
    .local v1, appWidgetId:I
    new-instance v3, Lcom/softwinner/launcher/Launcher$3;

    const-string v4, "deleteAppWidgetId"

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/softwinner/launcher/Launcher$3;-><init>(Lcom/softwinner/launcher/Launcher;Ljava/lang/String;Lcom/softwinner/launcher/LauncherAppWidgetHost;Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v3}, Lcom/softwinner/launcher/Launcher$3;->start()V

    .line 606
    .end local v1           #appWidgetId:I
    :cond_0
    invoke-static {p0, p1}, Lcom/softwinner/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;)V

    .line 607
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 695
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/softwinner/launcher/Launcher;->mWaitingForResult:Z

    .line 696
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    return-void
.end method

.method public startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f0a0002

    const/4 v1, 0x0

    .line 717
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/softwinner/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 720
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 722
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0a0002

    const/4 v2, 0x0

    .line 700
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 702
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 705
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 706
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 708
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
