.class Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;
.super Ljava/lang/Object;
.source "MzIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortEntry"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field order:I

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/meizu/MzIccProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzIccProvider;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzIccProvider;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;)V

    return-void
.end method
