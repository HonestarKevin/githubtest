.class public Lcom/softwinner/launcher/ui/WorkSpace;
.super Landroid/widget/RelativeLayout;
.source "WorkSpace.java"

# interfaces
.implements Lcom/softwinner/launcher/LauncherModel$Callbacks;
.implements Lcom/softwinner/launcher/ActivityRuntimeInterface;
.implements Lcom/softwinner/launcher/IAllAppsView$Watcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;,
        Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;
    }
.end annotation


# static fields
.field private static DEBUG_WIDGETS:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAddWidgetsBtn:Landroid/view/View;

.field private mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

.field private mDelWidgetsBtn:Landroid/view/View;

.field private mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

.field mLauncher:Lcom/softwinner/launcher/Launcher;

.field private mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

.field private mStatusBar:Lcom/softwinner/launcher/ui/StatusBar;

.field private mWallpaperBtn:Landroid/view/View;

.field private mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/softwinner/launcher/ui/WorkSpace;->DEBUG_WIDGETS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    const-string v0, "Laucher.MainViewContainer"

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->TAG:Ljava/lang/String;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/ui/WorkSpace;)Lcom/softwinner/launcher/ui/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDesktopByAnimated(Z)V
    .locals 4
    .parameter "isShow"

    .prologue
    const v3, 0x7f040001

    const/high16 v2, 0x7f04

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAppsFavoritesVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, p1, p2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->addFocusables(Ljava/util/ArrayList;I)V

    .line 184
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/softwinner/launcher/ui/CellLayout;->addFocusables(Ljava/util/ArrayList;I)V

    .line 186
    :cond_0
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIII)V
    .locals 7
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 153
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/softwinner/launcher/ui/WorkSpace;->addInScreen(Landroid/view/View;IIIIZ)V

    .line 154
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIZ)V
    .locals 3
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    .line 169
    .local v0, group:Lcom/softwinner/launcher/ui/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 170
    .local v1, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    invoke-direct {v1, p2, p3, p4, p5}, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;-><init>(IIII)V

    .line 178
    .restart local v1       #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    :goto_0
    if-eqz p6, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, p1, v2, v1}, Lcom/softwinner/launcher/ui/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void

    .line 173
    :cond_0
    iput p2, v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    .line 174
    iput p3, v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    .line 175
    iput p4, v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    .line 176
    iput p5, v1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->setApps(Ljava/util/ArrayList;)V

    .line 383
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->setApps(Ljava/util/ArrayList;)V

    .line 384
    return-void
.end method

.method public bindAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->setLoadOnResume()Z

    .line 343
    sget-boolean v0, Lcom/softwinner/launcher/ui/WorkSpace;->DEBUG_WIDGETS:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 344
    .local v9, start:J
    :goto_0
    sget-boolean v0, Lcom/softwinner/launcher/ui/WorkSpace;->DEBUG_WIDGETS:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "Laucher.MainViewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget v7, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 349
    .local v7, appWidgetId:I
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v0}, Lcom/softwinner/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .line 351
    .local v8, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    sget-boolean v0, Lcom/softwinner/launcher/ui/WorkSpace;->DEBUG_WIDGETS:Z

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "Laucher.MainViewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v0}, Lcom/softwinner/launcher/Launcher;->getAppWidgetHost()Lcom/softwinner/launcher/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v0, v1, v7, v8}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 358
    iget-object v0, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v7, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 359
    iget-object v0, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 361
    iget-object v1, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v3, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v4, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v5, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/softwinner/launcher/ui/WorkSpace;->addInScreen(Landroid/view/View;IIIIZ)V

    .line 364
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->requestLayout()V

    .line 366
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    iget-object v0, v0, Lcom/softwinner/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    iget-object v0, v0, Lcom/softwinner/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_2
    sget-boolean v0, Lcom/softwinner/launcher/ui/WorkSpace;->DEBUG_WIDGETS:Z

    if-eqz v0, :cond_3

    .line 370
    const-string v0, "Laucher.MainViewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound widget id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3
    return-void

    .line 343
    .end local v7           #appWidgetId:I
    .end local v8           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v9           #start:J
    :cond_4
    const-wide/16 v9, 0x0

    goto/16 :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->addApps(Ljava/util/ArrayList;)V

    .line 389
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->addApps(Ljava/util/ArrayList;)V

    .line 390
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->removeApps(Ljava/util/ArrayList;)V

    .line 401
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->removeApps(Ljava/util/ArrayList;)V

    .line 402
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->updateApps(Ljava/util/ArrayList;)V

    .line 395
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p1}, Lcom/softwinner/launcher/IAllAppsView;->updateApps(Ljava/util/ArrayList;)V

    .line 396
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/softwinner/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/softwinner/launcher/FolderInfo;>;"
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ItemInfo;>;"
    return-void
.end method

.method public closeAllApps(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/softwinner/launcher/IAllAppsView;->zoom(FZ)V

    .line 285
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 286
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->showDesktopByAnimated(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public closeAppsFavorites(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/softwinner/launcher/IAllAppsView;->zoom(FZ)V

    .line 293
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 294
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->showDesktopByAnimated(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public createMainMenu()V
    .locals 15

    .prologue
    const v7, 0x7f080008

    .line 460
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 461
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 463
    .local v14, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getHeight()I

    move-result v0

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x7f080009

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v6, v0, v1

    .line 466
    .local v6, height:I
    const v0, 0x7f080006

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v5, v0, -0x14

    .line 467
    .local v5, width:I
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v6, 0x2

    add-int v4, v0, v1

    .line 469
    .local v4, y:I
    const v8, 0x1869f

    .line 470
    .local v8, x:I
    new-instance v2, Lcom/softwinner/launcher/ui/OptionMenu;

    invoke-direct {v2, v3}, Lcom/softwinner/launcher/ui/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 471
    .local v2, om:Lcom/softwinner/launcher/ui/OptionMenu;
    invoke-static {v3}, Lcom/softwinner/launcher/ui/OptionMenu;->createTextAdapter(Landroid/content/Context;)Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;

    .line 472
    .local v13, adapter:Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;
    iget-object v0, v13, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    const v1, 0x7f0a0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v0, v13, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    const v1, 0x7f0a0017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, v13, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    const v1, 0x7f0a0019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v2, v13}, Lcom/softwinner/launcher/ui/OptionMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    const v0, 0x7f0a001c

    invoke-virtual {v2, v0}, Lcom/softwinner/launcher/ui/OptionMenu;->setTitle(I)V

    .line 477
    new-instance v0, Lcom/softwinner/launcher/ui/WorkSpace$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/softwinner/launcher/ui/WorkSpace$1;-><init>(Lcom/softwinner/launcher/ui/WorkSpace;Lcom/softwinner/launcher/ui/OptionMenu;Landroid/content/Context;III)V

    invoke-virtual {v2, v0}, Lcom/softwinner/launcher/ui/OptionMenu;->setClickCallback(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 524
    const/4 v12, 0x0

    move-object v7, v2

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/softwinner/launcher/ui/OptionMenu;->show(IIIIZ)V

    .line 525
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p1, p0, v2, v2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "view"
    .parameter "direction"

    .prologue
    .line 190
    invoke-super {p0, p2}, Landroid/widget/RelativeLayout;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAppsFavoritesVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    const/16 v1, 0x82

    if-ne p2, v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->requestFocus()Z

    .line 197
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 199
    .end local v0           #v:Landroid/view/View;
    :cond_1
    return-object v0

    .line 194
    .restart local v0       #v:Landroid/view/View;
    :cond_2
    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/CellLayout;->requestFocus()Z

    goto :goto_0
.end method

.method public getCellLayout(I)Lcom/softwinner/launcher/ui/CellLayout;
    .locals 1
    .parameter "reservation"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getWidgetLayout()Lcom/softwinner/launcher/ui/CellLayout;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    return-object v0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppsFavoritesVisible()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppViewFocusChange(Z)V
    .locals 3
    .parameter "appVisiable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setFocusable(Z)V

    .line 240
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->setFocusable(Z)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setFocusable(Z)V

    .line 243
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0, v2}, Lcom/softwinner/launcher/ui/CellLayout;->setFocusable(Z)V

    .line 244
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->requestFocus()Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 443
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/WorkSpace;->closeAllApps(Z)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAppsFavoritesVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/WorkSpace;->closeAppsFavorites(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->reflashLocal()V

    .line 457
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 133
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    .line 134
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    .line 135
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/IAllAppsView;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    .line 136
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/IAllAppsView;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    .line 137
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/StatusBar;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mStatusBar:Lcom/softwinner/launcher/ui/StatusBar;

    .line 138
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p0}, Lcom/softwinner/launcher/IAllAppsView;->setWatcher(Lcom/softwinner/launcher/IAllAppsView$Watcher;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->onAppViewFocusChange(Z)V

    .line 141
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->onCreateMenu()V

    .line 225
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAppsFavoritesVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0}, Lcom/softwinner/launcher/IAllAppsView;->onCreateMenu()V

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->createMainMenu()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string v0, "Laucher.MainViewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "com.softwinner.category.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/WorkSpace;->closeAppsFavorites(Z)V

    .line 434
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/WorkSpace;->showAllApps(Z)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/WorkSpace;->closeAllApps(Z)V

    .line 437
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/WorkSpace;->closeAppsFavorites(Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 529
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 453
    return-void
.end method

.method public setLauncher(Lcom/softwinner/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    .line 230
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setMainLayout(Lcom/softwinner/launcher/ui/WorkSpace;)V

    .line 231
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public showAllApps(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1, p1}, Lcom/softwinner/launcher/IAllAppsView;->zoom(FZ)V

    .line 270
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mAllAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 272
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->showDesktopByAnimated(Z)V

    .line 273
    :cond_0
    return-void
.end method

.method public showFavoritesApps(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1, p1}, Lcom/softwinner/launcher/IAllAppsView;->zoom(FZ)V

    .line 276
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    invoke-interface {v0, p0}, Lcom/softwinner/launcher/IAllAppsView;->setWatcher(Lcom/softwinner/launcher/IAllAppsView$Watcher;)V

    .line 277
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 278
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mFavoritesAppsView:Lcom/softwinner/launcher/IAllAppsView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 279
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace;->showDesktopByAnimated(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0}, Lcom/softwinner/launcher/ui/CellLayout;->removeAllViewsInLayout()V

    .line 319
    return-void
.end method

.method public zoomed(F)V
    .locals 4
    .parameter "zoom"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/WorkSpace;->isAppsFavoritesVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0, v3}, Lcom/softwinner/launcher/ui/CellLayout;->setVisibility(I)V

    .line 536
    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/WorkSpace;->onAppViewFocusChange(Z)V

    .line 537
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mStatusBar:Lcom/softwinner/launcher/ui/StatusBar;

    invoke-virtual {v0, v2}, Lcom/softwinner/launcher/ui/StatusBar;->Zoomed(Z)V

    .line 544
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mQsb:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->setVisibility(I)V

    .line 541
    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/WorkSpace;->onAppViewFocusChange(Z)V

    .line 542
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace;->mStatusBar:Lcom/softwinner/launcher/ui/StatusBar;

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/StatusBar;->Zoomed(Z)V

    goto :goto_0
.end method
