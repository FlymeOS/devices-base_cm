.class public Landroid/content/res/flymetheme/drawable/ClockDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ClockDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/drawable/ClockDrawable$1;
    }
.end annotation


# static fields
.field private static CLOCK_BG:Ljava/lang/String;

.field private static CLOCK_DEF:Ljava/lang/String;

.field private static CLOCK_HOUR:Ljava/lang/String;

.field private static CLOCK_MASK:Ljava/lang/String;

.field private static CLOCK_MINUTE:Ljava/lang/String;

.field private static CLOCK_SECOND:Ljava/lang/String;

.field private static DEBUG:Ljava/lang/Boolean;

.field private static LOG_TAG:Ljava/lang/String;

.field private static UPDATE_MESSAGE:I


# instance fields
.field availableHeight:I

.field availableWidth:I

.field centerX:I

.field centerY:I

.field mClockBg:Landroid/graphics/drawable/Drawable;

.field mClockDef:Landroid/graphics/drawable/Drawable;

.field mClockHour:Landroid/graphics/drawable/Drawable;

.field mClockMask:Landroid/graphics/drawable/Drawable;

.field mClockMinute:Landroid/graphics/drawable/Drawable;

.field mClockSecond:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDrawDefIcon:Z

.field private final mHandler:Landroid/os/Handler;

.field mHeigh:I

.field mTempHeigh:I

.field mTempWidth:I

.field private mUpdateTime:I

.field mWidth:I

.field final timer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "ClockDrawable"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->DEBUG:Ljava/lang/Boolean;

    .line 27
    const-string/jumbo v0, "flyme_icon/com.android.alarmclock/clock_bg"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_BG:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "flyme_icon/com.android.alarmclock/clock_hour"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_HOUR:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "flyme_icon/com.android.alarmclock/clock_minute"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MINUTE:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "flyme_icon/com.android.alarmclock/clock_second"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_SECOND:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "flyme_icon/com.android.alarmclock/clock_mask"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MASK:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "com.android.alarmclock"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_DEF:Ljava/lang/String;

    .line 36
    const/16 v0, 0x3e9

    sput v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x78

    const/4 v3, 0x0

    const/16 v2, 0xf0

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mUpdateTime:I

    .line 38
    new-instance v0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;-><init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->timer:Ljava/util/Timer;

    .line 63
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    .line 64
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    .line 65
    iput v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    .line 66
    iput v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    .line 67
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    .line 68
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    .line 69
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 70
    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 72
    iput-boolean v3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    .line 77
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mContext:Landroid/content/Context;

    .line 78
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_HOUR:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    .line 79
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MINUTE:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    .line 80
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_SECOND:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    .line 81
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_BG:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    .line 82
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MASK:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    .line 83
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_DEF:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "flyme icon res is null, draw the def one!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    .line 90
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    .line 91
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    .line 92
    invoke-virtual {p0}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->update()V

    .line 76
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-boolean v3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    .line 95
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    .line 97
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    .line 99
    :cond_2
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->timer:Ljava/util/Timer;

    new-instance v1, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;

    invoke-direct {v1, p0}, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;-><init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;)V

    .line 104
    const-wide/16 v2, 0x0

    iget v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mUpdateTime:I

    int-to-long v4, v4

    .line 99
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 126
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 127
    .local v2, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 128
    .local v4, "minute":I
    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 129
    .local v8, "second":I
    int-to-float v10, v2

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    int-to-float v11, v4

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v11, v12

    add-float v3, v10, v11

    .line 130
    .local v3, "hourRotate":F
    int-to-float v10, v4

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v5, v10, v11

    .line 131
    .local v5, "minuteRotate":F
    int-to-float v10, v8

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v9, v10, v11

    .line 133
    .local v9, "secondRotate":F
    const/4 v7, 0x0

    .line 135
    .local v7, "scaled":Z
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    if-lt v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    if-ge v10, v11, :cond_1

    .line 136
    :cond_0
    const/4 v7, 0x1

    .line 137
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    int-to-float v11, v11

    .line 138
    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    int-to-float v12, v12

    .line 137
    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 139
    .local v6, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 143
    .end local v6    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    if-eqz v10, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 147
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    .line 148
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    .line 147
    add-int/2addr v13, v14

    .line 148
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 147
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    :cond_3
    return-void

    .line 152
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    .line 154
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    div-int/lit8 v14, v14, 0x2

    .line 153
    add-int/2addr v13, v14

    .line 154
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 153
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    .line 161
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 162
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 163
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 164
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 163
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7

    .line 172
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 174
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 175
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 174
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 186
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 185
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    .line 194
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 196
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 195
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 218
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 117
    iput p3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    .line 118
    iput p4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    .line 119
    iget v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    .line 120
    iget v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    .line 115
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 222
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    .local v0, "msg":Landroid/os/Message;
    sget v1, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method
