.class Lcom/android/server/shrinker/Shrinker$Instance;
.super Ljava/lang/Object;
.source "Shrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shrinker/Shrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/shrinker/Shrinker;


# direct methods
.method static synthetic -get0()Lcom/android/server/shrinker/Shrinker;
    .locals 1

    sget-object v0, Lcom/android/server/shrinker/Shrinker$Instance;->INSTANCE:Lcom/android/server/shrinker/Shrinker;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/android/server/shrinker/Shrinker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/shrinker/Shrinker;-><init>(Lcom/android/server/shrinker/Shrinker;)V

    sput-object v0, Lcom/android/server/shrinker/Shrinker$Instance;->INSTANCE:Lcom/android/server/shrinker/Shrinker;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
