.class Lcom/softwinner/launcher/ui/FavoritesApps2D$1;
.super Ljava/lang/Object;
.source "FavoritesApps2D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/FavoritesApps2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/FavoritesApps2D;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 41
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 42
    .local v3, selected:Landroid/view/View;
    if-nez v3, :cond_3

    .line 43
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->showMenu:Z
    invoke-static {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$000(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$100(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    invoke-virtual {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-static {v6}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$200(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Lcom/softwinner/launcher/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v5, v6}, Lcom/softwinner/launcher/LauncherModel;->delFavoritesAppFromDataBase(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 51
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 66
    :cond_1
    :goto_1
    return-void

    .line 46
    :cond_2
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$300(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mApp:Lcom/softwinner/launcher/ApplicationInfo;
    invoke-static {v6}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$200(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Lcom/softwinner/launcher/ApplicationInfo;

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

    .line 48
    .local v1, packageURI:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v4, uninstallIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getLauncher()Lcom/softwinner/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/softwinner/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    .end local v1           #packageURI:Landroid/net/Uri;
    .end local v4           #uninstallIntent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 57
    .local v2, position:I
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v2}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 58
    .local v0, app:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mDelBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$100(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    invoke-virtual {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v5, v6}, Lcom/softwinner/launcher/LauncherModel;->delFavoritesAppFromDataBase(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 65
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    iget-object v5, v5, Lcom/softwinner/launcher/ui/FavoritesApps2D;->mMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 60
    :cond_5
    iget-object v5, p0, Lcom/softwinner/launcher/ui/FavoritesApps2D$1;->this$0:Lcom/softwinner/launcher/ui/FavoritesApps2D;

    #getter for: Lcom/softwinner/launcher/ui/FavoritesApps2D;->mUninstallBtn:Landroid/view/View;
    invoke-static {v5}, Lcom/softwinner/launcher/ui/FavoritesApps2D;->access$300(Lcom/softwinner/launcher/ui/FavoritesApps2D;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
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

    .line 62
    .restart local v1       #packageURI:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .restart local v4       #uninstallIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/softwinner/launcher/LauncherApplication;->getLauncher()Lcom/softwinner/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/softwinner/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
