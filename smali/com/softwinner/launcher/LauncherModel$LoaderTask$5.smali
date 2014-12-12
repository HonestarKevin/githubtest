.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;
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

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iput p3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$start:I

    iput p4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 998
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 999
    .local v0, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v1, v1, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->this$0:Lcom/softwinner/launcher/LauncherModel;

    iget-object v1, v1, Lcom/softwinner/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$start:I

    iget v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$start:I

    iget v4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$5;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    .line 1002
    :cond_0
    return-void
.end method
