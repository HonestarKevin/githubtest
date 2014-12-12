.class Lcom/softwinner/launcher/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/softwinner/launcher/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/IconCache;)V
    .locals 2
    .parameter "iconCache"

    .prologue
    const/16 v1, 0x2a

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    .line 56
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 174
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 202
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softwinner/launcher/ApplicationInfo;

    .line 203
    .local v2, info:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v3, v2, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const/4 v3, 0x1

    .line 207
    .end local v2           #info:Lcom/softwinner/launcher/ApplicationInfo;
    :goto_1
    return v3

    .line 201
    .restart local v2       #info:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v2           #info:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 189
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const/4 v4, 0x1

    .line 193
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/softwinner/launcher/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 214
    iget-object v3, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softwinner/launcher/ApplicationInfo;

    .line 215
    .local v2, info:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v3, v2, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 216
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #info:Lcom/softwinner/launcher/ApplicationInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/softwinner/launcher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/softwinner/launcher/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/softwinner/launcher/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/softwinner/launcher/ApplicationInfo;

    iget-object v4, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-direct {v3, v1, v4}, Lcom/softwinner/launcher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/softwinner/launcher/IconCache;)V

    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/AllAppsList;->add(Lcom/softwinner/launcher/ApplicationInfo;)V

    goto :goto_0

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    return-void
.end method

.method public get(I)Lcom/softwinner/launcher/ApplicationInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 106
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/softwinner/launcher/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 107
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ApplicationInfo;

    .line 108
    .local v3, info:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v4, v3, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v3           #info:Lcom/softwinner/launcher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v4}, Lcom/softwinner/launcher/IconCache;->flush()V

    .line 116
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 122
    invoke-static {p1, p2}, Lcom/softwinner/launcher/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 123
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 126
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 127
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 128
    .local v0, applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v6, v0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 129
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    invoke-static {v5, v1}, Lcom/softwinner/launcher/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v6, v1}, Lcom/softwinner/launcher/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 133
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 140
    .end local v0           #applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 141
    .local v2, count:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 142
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 143
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/softwinner/launcher/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/softwinner/launcher/ApplicationInfo;

    move-result-object v0

    .line 146
    .restart local v0       #applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    if-nez v0, :cond_2

    .line 147
    new-instance v6, Lcom/softwinner/launcher/ApplicationInfo;

    iget-object v7, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-direct {v6, v4, v7}, Lcom/softwinner/launcher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/softwinner/launcher/IconCache;)V

    invoke-virtual {p0, v6}, Lcom/softwinner/launcher/AllAppsList;->add(Lcom/softwinner/launcher/ApplicationInfo;)V

    .line 141
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_2
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    iget-object v7, v0, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/softwinner/launcher/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 150
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v6, v0, v4}, Lcom/softwinner/launcher/IconCache;->getTitleAndIcon(Lcom/softwinner/launcher/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 151
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v0           #applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3       #i:I
    :goto_3
    if-ltz v3, :cond_5

    .line 157
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 158
    .restart local v0       #applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    iget-object v6, v0, Lcom/softwinner/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 159
    .restart local v1       #component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->mIconCache:Lcom/softwinner/launcher/IconCache;

    invoke-virtual {v6, v1}, Lcom/softwinner/launcher/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 162
    iget-object v6, p0, Lcom/softwinner/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 166
    .end local v0           #applicationInfo:Lcom/softwinner/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_5
    return-void
.end method
