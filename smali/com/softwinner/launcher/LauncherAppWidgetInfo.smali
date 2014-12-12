.class public Lcom/softwinner/launcher/LauncherAppWidgetInfo;
.super Lcom/softwinner/launcher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field public appWidgetId:I

.field public hostView:Landroid/appwidget/AppWidgetHostView;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/softwinner/launcher/ItemInfo;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->itemType:I

    .line 46
    iput p1, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 47
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/softwinner/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 52
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v0, "title"

    iget-object v1, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/softwinner/launcher/ItemInfo;->unbind()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 66
    return-void
.end method
