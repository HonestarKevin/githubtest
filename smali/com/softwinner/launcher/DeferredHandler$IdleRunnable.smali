.class Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/softwinner/launcher/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "r"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;->this$0:Lcom/softwinner/launcher/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    return-void
.end method
