.class public Lcom/softwinner/launcher/ApplicationInfo;
.super Lcom/softwinner/launcher/ItemInfo;
.source "ApplicationInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field public title:Ljava/lang/CharSequence;

.field public titleBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/softwinner/launcher/ItemInfo;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->itemType:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/softwinner/launcher/IconCache;)V
    .locals 3
    .parameter "info"
    .parameter "iconCache"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/softwinner/launcher/ItemInfo;-><init>()V

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->container:J

    .line 71
    iget-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/softwinner/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 74
    invoke-virtual {p2, p0, p1}, Lcom/softwinner/launcher/IconCache;->getTitleAndIcon(Lcom/softwinner/launcher/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/softwinner/launcher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/softwinner/launcher/ItemInfo;-><init>(Lcom/softwinner/launcher/ItemInfo;)V

    .line 79
    iget-object v0, p1, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 80
    iget-object v0, p1, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/ApplicationInfo;

    .line 108
    .local v1, info:Lcom/softwinner/launcher/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" titleBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/softwinner/launcher/ApplicationInfo;->titleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v1           #info:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public makeShortcut()Lcom/softwinner/launcher/ShortcutInfo;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/softwinner/launcher/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ShortcutInfo;-><init>(Lcom/softwinner/launcher/ApplicationInfo;)V

    return-object v0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/softwinner/launcher/ApplicationInfo;->itemType:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
