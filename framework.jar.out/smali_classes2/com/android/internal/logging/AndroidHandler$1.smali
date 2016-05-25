.class final Lcom/android/internal/logging/AndroidHandler$1;
.super Ljava/util/logging/Formatter;
.source "AndroidHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/AndroidHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    .line 93
    .local v2, "thrown":Ljava/lang/Throwable;
    if-eqz v2, :cond_0

    .line 94
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 96
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 97
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 100
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
