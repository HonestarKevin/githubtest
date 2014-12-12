.class public Lcom/softwinner/launcher/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/DeferredHandler$1;,
        Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;,
        Lcom/softwinner/launcher/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/softwinner/launcher/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 36
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 37
    new-instance v0, Lcom/softwinner/launcher/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/softwinner/launcher/DeferredHandler$Impl;-><init>(Lcom/softwinner/launcher/DeferredHandler;Lcom/softwinner/launcher/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mHandler:Lcom/softwinner/launcher/DeferredHandler$Impl;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/softwinner/launcher/DeferredHandler;->scheduleNextLocked()V

    .line 82
    :cond_0
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 87
    new-instance v0, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;-><init>(Lcom/softwinner/launcher/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method scheduleNextLocked()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 105
    .local v0, peek:Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/softwinner/launcher/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lcom/softwinner/launcher/DeferredHandler;->mHandler:Lcom/softwinner/launcher/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 111
    .end local v0           #peek:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v0       #peek:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/softwinner/launcher/DeferredHandler;->mHandler:Lcom/softwinner/launcher/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
