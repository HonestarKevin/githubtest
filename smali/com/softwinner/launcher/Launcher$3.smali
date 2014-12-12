.class Lcom/softwinner/launcher/Launcher$3;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/Launcher;->removeAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/Launcher;

.field final synthetic val$appWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

.field final synthetic val$launcherAppWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/Launcher;Ljava/lang/String;Lcom/softwinner/launcher/LauncherAppWidgetHost;Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher$3;->this$0:Lcom/softwinner/launcher/Launcher;

    iput-object p3, p0, Lcom/softwinner/launcher/Launcher$3;->val$appWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    iput-object p4, p0, Lcom/softwinner/launcher/Launcher$3;->val$launcherAppWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher$3;->val$appWidgetHost:Lcom/softwinner/launcher/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/softwinner/launcher/Launcher$3;->val$launcherAppWidgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 603
    return-void
.end method
