.class public Landroid/content/res/flymetheme/drawable/CalendarDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "CalendarDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;,
        Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;
    }
.end annotation


# static fields
.field public static CALENDAR_0:Ljava/lang/String;

.field public static CALENDAR_1:Ljava/lang/String;

.field public static CALENDAR_2:Ljava/lang/String;

.field public static CALENDAR_3:Ljava/lang/String;

.field public static CALENDAR_4:Ljava/lang/String;

.field public static CALENDAR_5:Ljava/lang/String;

.field public static CALENDAR_6:Ljava/lang/String;

.field public static CALENDAR_7:Ljava/lang/String;

.field public static CALENDAR_8:Ljava/lang/String;

.field public static CALENDAR_9:Ljava/lang/String;

.field public static CALENDAR_BG:Ljava/lang/String;

.field public static CALENDAR_DEF:Ljava/lang/String;

.field public static CALENDAR_MASK:Ljava/lang/String;

.field private static DEBUG:Ljava/lang/Boolean;

.field private static LOG_TAG:Ljava/lang/String;

.field private static UPDATE_MESSAGE:I


# instance fields
.field availableHeight:I

.field availableWidth:I

.field centerX:I

.field centerY:I

.field mCalendar0:Landroid/graphics/drawable/Drawable;

.field mCalendar1:Landroid/graphics/drawable/Drawable;

.field mCalendar2:Landroid/graphics/drawable/Drawable;

.field mCalendar3:Landroid/graphics/drawable/Drawable;

.field mCalendar4:Landroid/graphics/drawable/Drawable;

.field mCalendar5:Landroid/graphics/drawable/Drawable;

.field mCalendar6:Landroid/graphics/drawable/Drawable;

.field mCalendar7:Landroid/graphics/drawable/Drawable;

.field mCalendar8:Landroid/graphics/drawable/Drawable;

.field mCalendar9:Landroid/graphics/drawable/Drawable;

.field mCalendarBg:Landroid/graphics/drawable/Drawable;

.field mCalendarDef:Landroid/graphics/drawable/Drawable;

.field mCalendarMask:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDrawDefIcon:Z

.field private final mHandler:Landroid/os/Handler;

.field mHeigh:I

.field mTempHeigh:I

.field mTempWidth:I

.field private mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTime:I

.field mWidth:I


# direct methods
.method static synthetic -get0()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "CalendarDrawable"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    .line 37
    const-string/jumbo v0, "flyme_icon/com.android.calendar/calendar_bg"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "flyme_icon/com.android.calendar/calendar_mask"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_0"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_1"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_2"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_3"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_4"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_5"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_6"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_7"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_8"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_9"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "com.android.calendar"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    .line 53
    const/16 v0, 0x3e9

    sput v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x78

    const/4 v4, 0x0

    const/16 v3, 0xf0

    .line 108
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 51
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mUpdateTime:I

    .line 55
    new-instance v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;-><init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHandler:Landroid/os/Handler;

    .line 80
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    .line 81
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    .line 82
    iput v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    .line 83
    iput v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    .line 84
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    .line 85
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    .line 86
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTempWidth:I

    .line 87
    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTempHeigh:I

    .line 89
    iput-boolean v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    .line 93
    new-instance v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;

    invoke-direct {v1, p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;-><init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;)V

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    .line 110
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarMask:Landroid/graphics/drawable/Drawable;

    .line 111
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    .line 112
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 115
    iput-boolean v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    .line 116
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    .line 118
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    .line 130
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->update()V

    .line 108
    return-void

    .line 121
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "flyme icon res is null, draw the def one!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    .line 125
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    .line 127
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    goto :goto_0
.end method

.method private addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 326
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 328
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 330
    sget v5, Lcom/flyme/internal/R$drawable;->calendar_mask:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 332
    :cond_0
    if-nez v0, :cond_3

    .line 333
    move-object v3, p2

    .line 343
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 352
    :cond_2
    :goto_2
    return-object v3

    .line 335
    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 336
    .local v4, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 337
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 336
    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 338
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {p2, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 344
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    const/4 v4, 0x0

    .local v4, "temp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 348
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    :goto_3
    const/4 v2, 0x0

    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 340
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p2

    .line 343
    .local v3, "result":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 347
    :cond_6
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 344
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    const/4 v4, 0x0

    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    .line 343
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 347
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 342
    :cond_9
    :goto_6
    throw v5

    .line 344
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    const/4 v4, 0x0

    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 348
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v2, 0x0

    .restart local v2    # "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_6
.end method

.method private addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 223
    const/4 v10, 0x0

    .line 224
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 225
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 227
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 228
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 229
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 230
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 231
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {p0 .. p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42ce0000    # 103.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x43700000    # 240.0f

    div-float v16, v17, v18

    .line 235
    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 236
    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 237
    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 238
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 239
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 240
    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 260
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 265
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_2
    return-object v13

    .line 242
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "y":F
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 243
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 244
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 245
    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v14, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v6

    .line 250
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    move-object/from16 v13, p1

    .line 256
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 260
    :cond_3
    :goto_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 261
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    :goto_4
    const/4 v14, 0x0

    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 257
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "x":F
    .restart local v16    # "y":F
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    const/4 v10, 0x0

    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 261
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 252
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_1
    move-exception v5

    .line 253
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    move-object/from16 v13, p1

    .line 256
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 260
    :cond_6
    :goto_5
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 261
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 257
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 257
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "er":Ljava/lang/OutOfMemoryError;
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 255
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    .line 256
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 260
    :cond_9
    :goto_6
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 255
    :cond_a
    :goto_7
    throw v17

    .line 257
    :cond_b
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 261
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    const/4 v14, 0x0

    .restart local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    goto :goto_7
.end method

.method private addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    const/4 v15, 0x0

    .line 281
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 282
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .line 283
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 284
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 286
    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 287
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 288
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 291
    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    .line 290
    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_1

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    .end local v18    # "resColor":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 302
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 301
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 303
    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43700000    # 240.0f

    div-float v21, v5, v6

    .line 304
    .local v21, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 306
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .local v20, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "tanslateY":F
    :cond_0
    :goto_1
    return-object v20

    .line 293
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "resColor":Ljava/lang/String;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v16

    .line 294
    .local v16, "l":J
    move-wide/from16 v0, v16

    long-to-int v12, v0

    goto :goto_0

    .line 296
    .end local v16    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 297
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "sl":Landroid/text/StaticLayout;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "tanslateY":F
    :cond_2
    move-object/from16 v5, v20

    .line 315
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 316
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "tanslateY":F
    :goto_2
    const/4 v15, 0x0

    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 310
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v13

    .line 311
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 312
    move-object/from16 v20, p1

    .line 314
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v5, v20

    .line 315
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 316
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 307
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v14

    .line 308
    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 309
    move-object/from16 v20, p1

    .line 314
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v5, v20

    .line 315
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 316
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 313
    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v5

    move-object v6, v5

    .line 314
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 313
    :cond_3
    :goto_3
    throw v6

    .line 278
    :cond_4
    const/4 v5, 0x0

    .line 315
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_3

    .line 316
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    const/4 v15, 0x0

    .restart local v15    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "date"    # C
    .param p3, "h"    # I
    .param p4, "w"    # I

    .prologue
    const/high16 v6, 0x43700000    # 240.0f

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 418
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 384
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 387
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 390
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 393
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_4
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 396
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_5
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 399
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_6
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 402
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 405
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_8
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 408
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_9
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 411
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_a
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 421
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 422
    int-to-float v3, p4

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p3

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 421
    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 382
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 357
    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 358
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 359
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 360
    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v8, 0x0

    .line 365
    sget v5, Lcom/flyme/internal/R$array;->calendar_week_title:I

    .line 364
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 368
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 369
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 370
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 371
    .local v3, "w":I
    if-gez v3, :cond_0

    .line 372
    const/4 v3, 0x0

    .line 373
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 374
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, " getDayOfWeek: "

    invoke-static {v5, v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    aget-object v5, v4, v8

    return-object v5
.end method

.method private getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "date"    # C

    .prologue
    .line 428
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 429
    .local v0, "dr":I
    packed-switch p2, :pswitch_data_0

    .line 465
    :goto_0
    :pswitch_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 431
    :pswitch_1
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    goto :goto_0

    .line 434
    :pswitch_2
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_1:I

    goto :goto_0

    .line 437
    :pswitch_3
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_2:I

    goto :goto_0

    .line 440
    :pswitch_4
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_3:I

    goto :goto_0

    .line 443
    :pswitch_5
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_4:I

    goto :goto_0

    .line 446
    :pswitch_6
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_5:I

    goto :goto_0

    .line 449
    :pswitch_7
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_6:I

    goto :goto_0

    .line 452
    :pswitch_8
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_7:I

    goto :goto_0

    .line 455
    :pswitch_9
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_8:I

    goto :goto_0

    .line 458
    :pswitch_a
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_9:I

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "scaled":Z
    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    if-ge v3, v4, :cond_1

    .line 163
    :cond_0
    const/4 v2, 0x1

    .line 164
    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    int-to-float v4, v4

    .line 165
    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    int-to-float v5, v5

    .line 164
    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 166
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 170
    .end local v1    # "scale":F
    :cond_1
    iget-boolean v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    if-eqz v3, :cond_4

    .line 171
    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    .line 173
    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    .line 172
    add-int/2addr v6, v7

    .line 173
    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v8, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 172
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    :cond_3
    return-void

    .line 177
    :cond_4
    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 178
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    .line 179
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 182
    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 181
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->finalize()V

    .line 140
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 203
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 152
    iput p3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    .line 153
    iput p4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    .line 154
    iget v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    .line 155
    iget v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 207
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "msg":Landroid/os/Message;
    sget v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method
