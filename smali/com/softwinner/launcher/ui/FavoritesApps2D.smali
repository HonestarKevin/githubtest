.class public Lcom/softwinner/launcher/ui/FavoritesApps2D;
.super Lcom/softwinner/launcher/ui/AllApps2D;
.source "FavoritesApps2D.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private mApp:Lcom/softwinner/launcher/ApplicationInfo;

.field private mDelBtn:Landroid/view/View;

.field protected mMenuDialog:Landroid/app/Dialog;

.field private mMenuEvent:Landroid/view/View$OnClickListener;

.field mModel:Lcom/softwinner/launcher/LauncherModel;

.field private mPosition:I

.field private mUninstallBtn:Landroid/view/View;

.field private showMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/ui/AllApps2D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->showMenu:Z

    .line 38
    new-instance v0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;-><init>(Lcom/softwinner/launcher/ui/FavoritesApps2D;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    .line 71
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getModel()Lcom/softwinner/launcher/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->showMenu:Z

    return v0
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Lcom/softwinner/launcher/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 86
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 87
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/softwinner/launcher/LauncherModel;->appFiltrate(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    :cond_0
    invoke-super {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->addApps(Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method public createMenuDialog(Landroid/content/Context;Lcom/softwinner/launcher/ApplicationInfo;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "app"

    .prologue
    .line 113
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x7f0b0001

    invoke-direct {v1, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 114
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 115
    .local v4, win:Landroid/view/Window;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 116
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    const v5, 0x1869f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 118
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    invoke-virtual {v1}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 121
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, content:Landroid/view/View;
    const v5, 0x7f0c000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;

    .line 123
    const v5, 0x7f0c0004

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;

    .line 124
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 128
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 131
    return-object v1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 136
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 137
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-virtual {p2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 138
    iput-boolean v3, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->showMenu:Z

    .line 139
    iput-object v0, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;

    .line 140
    iput p3, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mPosition:I

    .line 141
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->createMenuDialog(Landroid/content/Context;Lcom/softwinner/launcher/ApplicationInfo;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuDialog:Landroid/app/Dialog;

    .line 142
    iget-object v2, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 143
    iget-object v2, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 144
    .local v1, win:Landroid/view/Window;
    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 146
    return v3
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 95
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/softwinner/launcher/LauncherModel;->appFiltrate(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    :cond_0
    invoke-super {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->removeApps(Ljava/util/ArrayList;)V

    .line 100
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 76
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const-string v1, "filter"

    const-string v2, "step"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/softwinner/launcher/LauncherModel;->appFiltrate(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    :cond_0
    invoke-super {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->setApps(Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 104
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mModel:Lcom/softwinner/launcher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/softwinner/launcher/LauncherModel;->appFiltrate(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    :cond_0
    invoke-super {p0, v0}, Lcom/softwinner/launcher/ui/AllApps2D;->updateApps(Ljava/util/ArrayList;)V

    .line 109
    return-void
.end method
