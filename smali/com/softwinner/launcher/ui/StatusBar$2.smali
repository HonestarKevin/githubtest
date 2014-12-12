.class Lcom/softwinner/launcher/ui/StatusBar$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/ui/StatusBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/StatusBar;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/StatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/softwinner/launcher/ui/StatusBar$2;->this$0:Lcom/softwinner/launcher/ui/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.softwinner.launcher"

    const-string v2, "com.softwinner.launcher.Launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar$2;->this$0:Lcom/softwinner/launcher/ui/StatusBar;

    #getter for: Lcom/softwinner/launcher/ui/StatusBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/StatusBar;->access$000(Lcom/softwinner/launcher/ui/StatusBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
