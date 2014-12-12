.class public Lcom/softwinner/launcher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/IconCache$1;,
        Lcom/softwinner/launcher/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mBubble:Lcom/softwinner/launcher/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/softwinner/launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/softwinner/launcher/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/softwinner/launcher/IconCache;->mContext:Lcom/softwinner/launcher/LauncherApplication;

    .line 52
    invoke-virtual {p1}, Lcom/softwinner/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    new-instance v0, Lcom/softwinner/launcher/Utilities$BubbleText;

    invoke-direct {v0, p1}, Lcom/softwinner/launcher/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/softwinner/launcher/IconCache;->mBubble:Lcom/softwinner/launcher/Utilities$BubbleText;

    .line 54
    invoke-direct {p0}, Lcom/softwinner/launcher/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/softwinner/launcher/IconCache$CacheEntry;
    .locals 3
    .parameter "componentName"
    .parameter "info"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/IconCache$CacheEntry;

    .line 133
    .local v0, entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/softwinner/launcher/IconCache$CacheEntry;

    .end local v0           #entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/softwinner/launcher/IconCache$CacheEntry;-><init>(Lcom/softwinner/launcher/IconCache$1;)V

    .line 136
    .restart local v0       #entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 139
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/softwinner/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/IconCache;->mContext:Lcom/softwinner/launcher/LauncherApplication;

    invoke-static {v1, v2}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 145
    :cond_1
    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 58
    iget-object v3, p0, Lcom/softwinner/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 118
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 123
    :goto_0
    return-object v1

    .line 122
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/softwinner/launcher/IconCache$CacheEntry;

    move-result-object v0

    .line 123
    .local v0, entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 124
    .end local v0           #entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 103
    iget-object v4, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/softwinner/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 105
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/softwinner/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 112
    :goto_0
    return-object v3

    .line 111
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/softwinner/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/softwinner/launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 112
    .local v1, entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/softwinner/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    .line 113
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/softwinner/launcher/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter "application"
    .parameter "info"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2}, Lcom/softwinner/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/softwinner/launcher/IconCache$CacheEntry;

    move-result-object v0

    .line 92
    .local v0, entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mBubble:Lcom/softwinner/launcher/Utilities$BubbleText;

    iget-object v3, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/softwinner/launcher/Utilities$BubbleText;->createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    .line 96
    :cond_0
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 97
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->titleBitmap:Landroid/graphics/Bitmap;

    .line 98
    iget-object v1, v0, Lcom/softwinner/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 99
    monitor-exit v2

    .line 100
    return-void

    .line 99
    .end local v0           #entry:Lcom/softwinner/launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/softwinner/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/softwinner/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
