.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;
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

.field final synthetic val$widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->val$widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1035
    .local v0, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$8;->val$widget:Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    .line 1038
    :cond_0
    return-void
.end method
