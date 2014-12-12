.class public Lcom/softwinner/launcher/ui/AllApps2D;
.super Landroid/widget/RelativeLayout;
.source "AllApps2D.java"

# interfaces
.implements Lcom/softwinner/launcher/IAllAppsView;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;
    }
.end annotation


# static fields
.field private static final LOGD:Ljava/lang/Boolean; = null

.field private static final MODULE:Ljava/lang/String; = "AllApp2D"

.field private static final TAG:Ljava/lang/String; = "TvdLauncher"


# instance fields
.field private mAddBtn:Landroid/view/View;

.field protected mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/softwinner/launcher/ApplicationInfo;

.field protected mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

.field protected mGrid:Landroid/widget/GridView;

.field protected mMenuDialog:Landroid/app/Dialog;

.field private mMenuEvent:Landroid/view/View$OnClickListener;

.field private mPosition:I

.field private mUninstallBtn:Landroid/view/View;

.field protected mWatcher:Lcom/softwinner/launcher/IAllAppsView$Watcher;

.field private mZoom:F

.field private showMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/softwinner/launcher/ui/AllApps2D;->LOGD:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v3, p0, Lcom/softwinner/launcher/ui/AllApps2D;->showMenu:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/softwinner/launcher/ui/AllApps2D$1;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/AllApps2D$1;-><init>(Lcom/softwinner/launcher/ui/AllApps2D;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    .line 161
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/AllApps2D;->setSoundEffectsEnabled(Z)V

    .line 164
    new-instance v0, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;-><init>(Lcom/softwinner/launcher/ui/AllApps2D;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    .line 165
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    invoke-virtual {v0, v3}, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->setNotifyOnChange(Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/ui/AllApps2D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/ui/AllApps2D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->showMenu:Z

    return v0
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/ui/AllApps2D;)Lcom/softwinner/launcher/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/softwinner/launcher/ui/AllApps2D;->LOGD:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/softwinner/launcher/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 304
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 306
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ApplicationInfo;

    .line 307
    .local v3, x:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v4, v3, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    .end local v2           #i:I
    .end local v3           #x:Lcom/softwinner/launcher/ApplicationInfo;
    :goto_1
    return v2

    .line 305
    .restart local v2       #i:I
    .restart local v3       #x:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v3           #x:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 265
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 267
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 268
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ApplicationInfo;

    .line 269
    .local v3, item:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/softwinner/launcher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 271
    .local v2, index:I
    if-gez v2, :cond_0

    .line 272
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    sget-object v4, Lcom/softwinner/launcher/ui/AllApps2D;->LOGD:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/softwinner/launcher/ApplicationInfo;

    invoke-virtual {v4}, Lcom/softwinner/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v2           #index:I
    .end local v3           #item:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_2
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    invoke-virtual {v4}, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public createMenuDialog(Landroid/content/Context;Lcom/softwinner/launcher/ApplicationInfo;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "app"

    .prologue
    .line 379
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x7f0b0001

    invoke-direct {v1, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 380
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 381
    .local v4, win:Landroid/view/Window;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 382
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    const v5, 0x1869f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 385
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 386
    invoke-virtual {v1}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 387
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, content:Landroid/view/View;
    const v5, 0x7f0c0003

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;

    .line 389
    const v5, 0x7f0c0004

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;

    .line 390
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 391
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    :cond_0
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 397
    return-object v1
.end method

.method public dumpState()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    const v1, 0x3f7fbe77

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mWatcher:Lcom/softwinner/launcher/IAllAppsView$Watcher;

    iget v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    invoke-interface {v0, v1}, Lcom/softwinner/launcher/IAllAppsView$Watcher;->zoomed(F)V

    .line 217
    return-void

    .line 214
    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    goto :goto_0
.end method

.method public onCreateMenu()V
    .locals 5

    .prologue
    .line 403
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, selected:Landroid/view/View;
    if-nez v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 408
    .local v1, position:I
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 409
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->createMenuDialog(Landroid/content/Context;Lcom/softwinner/launcher/ApplicationInfo;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    .line 410
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 411
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 412
    .local v3, win:Landroid/view/Window;
    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    const-string v1, "all_apps_2d_grid"

    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/AllApps2D;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    .line 176
    iget-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "TvdLauncher"

    const-string v2, "AllApp2DCan\'t find necessary layout elements for AllApps2D"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setCacheColorHint(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 191
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v1, Lcom/softwinner/launcher/ui/AllApps2D;->LOGD:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TvdLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllApp2Dposition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 358
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getLauncher()Lcom/softwinner/launcher/Launcher;

    move-result-object v1

    iget-object v2, v0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v3, "TvdLauncher"

    invoke-virtual {v1, v2, v3}, Lcom/softwinner/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 364
    sget-object v2, Lcom/softwinner/launcher/ui/AllApps2D;->LOGD:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TvdLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllApp2Dposition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 366
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 367
    iput-boolean v5, p0, Lcom/softwinner/launcher/ui/AllApps2D;->showMenu:Z

    .line 368
    iput-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;

    .line 369
    iput p3, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mPosition:I

    .line 370
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->createMenuDialog(Landroid/content/Context;Lcom/softwinner/launcher/ApplicationInfo;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    .line 371
    iget-object v2, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 372
    iget-object v2, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 373
    .local v1, win:Landroid/view/Window;
    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 375
    return v5
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 281
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 283
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ApplicationInfo;

    .line 284
    .local v3, item:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/softwinner/launcher/ui/AllApps2D;->findAppByComponent(Ljava/util/ArrayList;Lcom/softwinner/launcher/ApplicationInfo;)I

    move-result v2

    .line 285
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 286
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 282
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    const-string v4, "TvdLauncher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllApp2Dcouldn\'t find a match for item \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    .end local v2           #index:I
    .end local v3           #item:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    invoke-virtual {v4}, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
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
    .line 260
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/AllApps2D;->addApps(Ljava/util/ArrayList;)V

    .line 262
    return-void
.end method

.method public setWatcher(Lcom/softwinner/launcher/IAllAppsView$Watcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mWatcher:Lcom/softwinner/launcher/IAllAppsView$Watcher;

    .line 248
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 298
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/AllApps2D;->removeApps(Ljava/util/ArrayList;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/AllApps2D;->addApps(Ljava/util/ArrayList;)V

    .line 300
    return-void
.end method

.method public zoom(FZ)V
    .locals 2
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->cancelLongPress()V

    .line 322
    iput p1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mZoom:F

    .line 324
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/AllApps2D;->mAppsAdapter:Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->onAnimationEnd()V

    goto :goto_0

    .line 334
    :cond_1
    if-eqz p2, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/AllApps2D;->onAnimationEnd()V

    goto :goto_0
.end method
