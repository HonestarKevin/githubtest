.class Lcom/softwinner/launcher/ui/AllApps2D$1;
.super Ljava/lang/Object;
.source "AllApps2D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/AllApps2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/AllApps2D;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/AllApps2D;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 86
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, selected:Landroid/view/View;
    if-nez v3, :cond_3

    .line 88
    const-string v5, "A"

    const-string v6, "selected == null!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->showMenu:Z
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$000(Lcom/softwinner/launcher/ui/AllApps2D;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$100(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$200(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-static {v6}, Lcom/softwinner/launcher/ui/AllApps2D;->access$300(Lcom/softwinner/launcher/ui/AllApps2D;)Lcom/softwinner/launcher/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v5, v6, v7}, Lcom/softwinner/launcher/LauncherModel;->setFavoritesApp(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 97
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$400(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-static {v6}, Lcom/softwinner/launcher/ui/AllApps2D;->access$300(Lcom/softwinner/launcher/ui/AllApps2D;)Lcom/softwinner/launcher/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, packageURI:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v4, uninstallIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getLauncher()Lcom/softwinner/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/softwinner/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v1           #packageURI:Landroid/net/Uri;
    .end local v4           #uninstallIntent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 103
    .local v2, position:I
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v2}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 104
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mAddBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$100(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$500(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v5, v6, v7}, Lcom/softwinner/launcher/LauncherModel;->setFavoritesApp(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 111
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/AllApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 106
    :cond_5
    iget-object v5, p0, Lcom/softwinner/launcher/ui/AllApps2D$1;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    #getter for: Lcom/softwinner/launcher/ui/AllApps2D;->mUninstallBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/AllApps2D;->access$400(Lcom/softwinner/launcher/ui/AllApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .restart local v1       #packageURI:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .restart local v4       #uninstallIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getLauncher()Lcom/softwinner/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/softwinner/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
