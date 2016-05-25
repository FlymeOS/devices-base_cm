.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "Trace"

.field public static final TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP:J = 0x1000L

.field public static final TRACE_TAG_AUDIO:J = 0x100L

.field public static final TRACE_TAG_BIONIC:J = 0x10000L

.field public static final TRACE_TAG_CAMERA:J = 0x400L

.field public static final TRACE_TAG_DALVIK:J = 0x4000L

.field public static final TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final TRACE_TAG_HAL:J = 0x800L

.field public static final TRACE_TAG_INPUT:J = 0x4L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field private static final TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final TRACE_TAG_POWER:J = 0x20000L

.field public static final TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final TRACE_TAG_RS:J = 0x8000L

.field public static final TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final TRACE_TAG_VIDEO:J = 0x200L

.field public static final TRACE_TAG_VIEW:J = 0x8L

.field public static final TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile sEnabledTags:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 103
    new-instance v0, Landroid/os/Trace$1;

    invoke-direct {v0}, Landroid/os/Trace$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 238
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    .line 241
    :cond_0
    return-void
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 255
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    .line 258
    :cond_0
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x1000

    .line 272
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sectionName is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 278
    :cond_1
    return-void
.end method

.method private static cacheEnabledTags()J
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Trace;->nativeGetEnabledTags()J

    move-result-wide v0

    .line 129
    .local v0, "tags":J
    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 130
    return-wide v0
.end method

.method public static endSection()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1000

    .line 288
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {v2, v3}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 291
    :cond_0
    return-void
.end method

.method public static isTagEnabled(J)Z
    .locals 6
    .param p0, "traceTag"    # J

    .prologue
    .line 142
    sget-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 143
    .local v0, "tags":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    move-result-wide v0

    .line 146
    :cond_0
    and-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native nativeAsyncTraceBegin(JLjava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(JLjava/lang/String;I)V
.end method

.method private static native nativeGetEnabledTags()J
.end method

.method private static native nativeSetAppTracingAllowed(Z)V
.end method

.method private static native nativeSetTracingEnabled(Z)V
.end method

.method private static native nativeTraceBegin(JLjava/lang/String;)V
.end method

.method private static native nativeTraceCounter(JLjava/lang/String;I)V
.end method

.method private static native nativeTraceEnd(J)V
.end method

.method public static setAppTracingAllowed(Z)V
    .locals 0
    .param p0, "allowed"    # Z

    .prologue
    .line 171
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    .line 175
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 176
    return-void
.end method

.method public static setTracingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 187
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    .line 191
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 192
    return-void
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    .prologue
    .line 159
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public static traceEnd(J)V
    .locals 2
    .param p0, "traceTag"    # J

    .prologue
    .line 219
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 222
    :cond_0
    return-void
.end method
