.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1008
    .local v0, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$6;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v1, v1, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v1, v1, Lcom/softwinner/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindFolders(Ljava/util/HashMap;)V

    .line 1011
    :cond_0
    return-void
.end method
