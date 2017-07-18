.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method static synthetic -wrap0(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    .locals 0
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .locals 1
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 204
    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;IZ)V
    .locals 8
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 214
    .end local v2    # "exception":Ljava/lang/Throwable;
    .local v4, "runCount":I
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v2, 0x0

    .line 223
    .restart local v2    # "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v3, "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 231
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :cond_1
    :goto_0
    if-ge v4, p2, :cond_2

    if-nez p3, :cond_0

    if-nez v2, :cond_0

    .line 233
    :cond_2
    if-eqz v2, :cond_4

    .line 234
    throw v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    move-object v2, v0

    .line 223
    .local v2, "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 218
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 223
    .restart local v2    # "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 222
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 223
    add-int/lit8 v4, v4, 0x1

    .line 225
    if-eqz p3, :cond_3

    .line 226
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v6, "currentiterations"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    invoke-virtual {v6, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 222
    .end local v3    # "iterations":Landroid/os/Bundle;
    :cond_3
    throw v5

    .line 208
    :cond_4
    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 60
    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    .line 46
    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x10000000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;, "TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 121
    return-object v0
.end method

.method protected runTest()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "fName":Ljava/lang/String;
    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 157
    const/4 v9, 0x0

    .line 163
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 168
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" should be public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    .line 172
    :cond_0
    const/4 v10, 0x1

    .line 173
    .local v10, "runCount":I
    const/4 v8, 0x0

    .line 174
    .local v8, "isRepetitive":Z
    const-class v0, Landroid/test/FlakyTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-class v0, Landroid/test/FlakyTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/test/FlakyTest;

    invoke-interface {v0}, Landroid/test/FlakyTest;->tolerance()I

    move-result v10

    .line 181
    :cond_1
    :goto_1
    const-class v0, Landroid/test/UiThreadTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    move v3, v10

    .line 183
    .local v3, "tolerance":I
    move v4, v8

    .line 184
    .local v4, "repetitive":Z
    move-object v2, v9

    .line 185
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Throwable;

    .line 186
    .local v5, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v11

    new-instance v0, Landroid/test/InstrumentationTestCase$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V

    invoke-virtual {v11, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 195
    aget-object v0, v5, v12

    if-eqz v0, :cond_4

    .line 196
    aget-object v0, v5, v12

    throw v0

    .line 164
    .end local v2    # "testMethod":Ljava/lang/reflect/Method;
    .end local v3    # "tolerance":I
    .end local v4    # "repetitive":Z
    .end local v5    # "exceptions":[Ljava/lang/Throwable;
    .end local v8    # "isRepetitive":Z
    .end local v10    # "runCount":I
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "isRepetitive":Z
    .restart local v10    # "runCount":I
    :cond_2
    const-class v0, Landroid/test/RepetitiveTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-class v0, Landroid/test/RepetitiveTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/test/RepetitiveTest;

    invoke-interface {v0}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v10

    .line 178
    const/4 v8, 0x1

    goto :goto_1

    .line 199
    :cond_3
    invoke-direct {p0, v9, v10, v8}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 154
    :cond_4
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 135
    .local v0, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 144
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 145
    aget-object v1, v0, v3

    throw v1

    .line 133
    :cond_0
    return-void
.end method

.method public sendKeys(Ljava/lang/String;)V
    .locals 18
    .param p1, "keysSequence"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v15, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, "keys":[Ljava/lang/String;
    array-length v1, v13

    .line 251
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    .line 253
    .local v7, "instrumentation":Landroid/app/Instrumentation;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 254
    aget-object v9, v13, v6

    .line 255
    .local v9, "key":Ljava/lang/String;
    const/16 v15, 0x2a

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 259
    .local v14, "repeater":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const/4 v12, 0x1

    .line 265
    .local v12, "keyCount":I
    :goto_1
    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 266
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    :cond_0
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v12, :cond_2

    .line 271
    :try_start_0
    const-class v15, Landroid/view/KeyEvent;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "KEYCODE_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 272
    .local v11, "keyCodeField":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    .line 274
    .local v10, "keyCode":I
    :try_start_1
    invoke-virtual {v7, v10}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 259
    .end local v8    # "j":I
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    .end local v12    # "keyCount":I
    :cond_1
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .restart local v12    # "keyCount":I
    goto :goto_1

    .line 260
    .end local v12    # "keyCount":I
    :catch_0
    move-exception v4

    .line 261
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "ActivityTestCase"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid repeat count: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 275
    .restart local v8    # "j":I
    .restart local v10    # "keyCode":I
    .restart local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    .restart local v12    # "keyCount":I
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/SecurityException;
    goto :goto_3

    .line 283
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v15, "ActivityTestCase"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown keycode: KEYCODE_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 280
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 281
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v15, "ActivityTestCase"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown keycode: KEYCODE_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 290
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    .end local v8    # "j":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "keyCount":I
    .end local v14    # "repeater":I
    :cond_3
    invoke-virtual {v7}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 247
    return-void
.end method

.method public varargs sendKeys([I)V
    .locals 5
    .param p1, "keys"    # [I

    .prologue
    .line 300
    array-length v0, p1

    .line 301
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 303
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 305
    :try_start_0
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 299
    return-void

    .line 306
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public varargs sendRepeatedKeys([I)V
    .locals 9
    .param p1, "keys"    # [I

    .prologue
    .line 324
    array-length v0, p1

    .line 325
    .local v0, "count":I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 326
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "The size of the keys array must be a multiple of 2"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 332
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 333
    aget v6, p1, v2

    .line 334
    .local v6, "keyCount":I
    add-int/lit8 v7, v2, 0x1

    aget v5, p1, v7

    .line 335
    .local v5, "keyCode":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 337
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 338
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_2

    .line 332
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 346
    .end local v4    # "j":I
    .end local v5    # "keyCode":I
    .end local v6    # "keyCount":I
    :cond_2
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 323
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 359
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 360
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 361
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 357
    return-void
.end method
