.class public Lcom/softwinner/launcher/ui/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/ui/DigitalClock$FormatChangeObserver;,
        Lcom/softwinner/launcher/ui/DigitalClock$AmPm;,
        Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "yyyy-M-d h:mm"

.field private static final M24:Ljava/lang/String; = "yyyy-M-d kk:mm"


# instance fields
.field private mAmPm:Lcom/softwinner/launcher/ui/DigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/softwinner/launcher/ui/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAttached:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method static synthetic access$002(Lcom/softwinner/launcher/ui/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/ui/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/ui/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/ui/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yyyy-M-d kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormat:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAmPm:Lcom/softwinner/launcher/ui/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "yyyy-M-d h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 222
    return-void

    .line 219
    :cond_0
    const-string v0, "yyyy-M-d h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAmPm:Lcom/softwinner/launcher/ui/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/softwinner/launcher/ui/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 216
    return-void

    .line 215
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 165
    iget v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAttached:I

    .line 168
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;-><init>(Lcom/softwinner/launcher/ui/DigitalClock;)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Lcom/softwinner/launcher/ui/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/softwinner/launcher/ui/DigitalClock$FormatChangeObserver;-><init>(Lcom/softwinner/launcher/ui/DigitalClock;)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 180
    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->updateTime()V

    .line 185
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 191
    iget v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAttached:I

    .line 193
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 201
    :cond_1
    iput-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 202
    iput-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 153
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 154
    const-string v0, "clock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    const-string v1, "/system/fonts/Clockopia.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    new-instance v0, Lcom/softwinner/launcher/ui/DigitalClock$AmPm;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/softwinner/launcher/ui/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mAmPm:Lcom/softwinner/launcher/ui/DigitalClock$AmPm;

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 158
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->setDateFormat()V

    .line 159
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 207
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/DigitalClock;->updateTime()V

    .line 208
    return-void
.end method
