.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field addBootPrecent:Ljava/lang/Runnable;

.field private bootPrecent:I

.field private displayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

.field private isAddPreCrent:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mStartTime:J

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isAddPreCrent:Z

    .line 1700
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->addBootPrecent:Ljava/lang/Runnable;

    .line 218
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/SystemServer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/server/SystemServer;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SystemServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/server/SystemServer;->bootPrecent:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/SystemServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->isAddPreCrent:Z

    return v0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 385
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 386
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 387
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 214
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 367
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 373
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 374
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 381
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 376
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 362
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 246
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 258
    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 272
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 281
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 286
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 287
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 296
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 300
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 304
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 308
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 311
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 314
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 316
    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 317
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 320
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 327
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 330
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 331
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 333
    const-string v0, "sys.loadinganimation.enable"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 334
    iput v8, p0, Lcom/android/server/SystemServer;->bootPrecent:I

    .line 335
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/SystemServer;->addBootPrecent:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootPrecent = 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SystemServer;->addBootPrecent:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 343
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 344
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :catch_0
    move-exception v6

    .line 346
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 400
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 403
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 405
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 406
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 412
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 416
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 419
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 423
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 426
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 429
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "cryptState":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    const-string v3, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 438
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    const-string v3, "SystemServer"

    const-string v5, "Regionalization Service"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v2, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v2}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 441
    .local v2, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string v3, "regionalization"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 445
    .end local v2    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string v3, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sys_ser:Entered the Android system server!  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/SystemServer;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 451
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 453
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 454
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 456
    const-string v3, "SystemServer"

    const-string v4, "User Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sys_ser:Package Manager  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/SystemServer;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 462
    const-string v3, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 465
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 468
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 472
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 473
    return-void

    .line 433
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const-string v3, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 451
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 483
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 484
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 490
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 491
    return-void
.end method

.method private startOtherServices()V
    .locals 114

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 499
    .local v3, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 500
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v52, 0x0

    .line 501
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    const/16 v104, 0x0

    .line 502
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 503
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v85, 0x0

    .line 504
    .local v85, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 505
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 506
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 507
    .local v86, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .line 508
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v87, 0x0

    .line 509
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v96, 0x0

    .line 510
    .local v96, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v110, 0x0

    .line 511
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v103, 0x0

    .line 512
    .local v103, "usb":Lcom/android/server/usb/UsbService;
    const/16 v94, 0x0

    .line 513
    .local v94, "serial":Lcom/android/server/SerialService;
    const/16 v90, 0x0

    .line 514
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v45, 0x0

    .line 515
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 516
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v99, 0x0

    .line 517
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v50, 0x0

    .line 518
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v42, 0x0

    .line 520
    .local v42, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v75, 0x0

    .line 522
    .local v75, "karaokeService":Landroid/media/KaraokeService;
    const/16 v84, 0x0

    .line 523
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v65, 0x0

    .line 524
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v44, 0x0

    .line 527
    .local v44, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v38, 0x0

    .line 532
    .local v38, "appPcService":Lcom/android/server/am/AppPcService;
    const/16 v36, 0x0

    .line 536
    .local v36, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 537
    .local v62, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 538
    .local v56, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 539
    .local v57, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 540
    .local v63, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 541
    .local v60, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 542
    .local v58, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 543
    .local v59, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 544
    .local v74, "isEmulator":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 547
    .local v55, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 550
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:User Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 556
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 560
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Scheduling Policy  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 566
    new-instance v100, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v100

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_44

    .line 567
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v100, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 569
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Telephony Registry  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 575
    new-instance v66, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_45

    .line 577
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v66, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 579
    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 585
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Entropy Mixer  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 591
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 592
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_46

    move-object/from16 v33, v34

    .line 597
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Account Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 603
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v52

    .line 606
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Content Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 614
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:System Content Providers  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 620
    new-instance v105, Lcom/android/server/VibratorService;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 621
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 623
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Vibrator Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 629
    new-instance v51, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_47

    .line 630
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v51, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 633
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 636
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Consumer IR Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 642
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v109

    .line 643
    .local v109, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 645
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Init Watchdog  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 651
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_48

    .line 653
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Input Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 659
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v73

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v110

    .line 662
    const-string v4, "window"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 663
    const-string v4, "input"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v110

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 667
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 668
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 674
    const-string v4, "SystemServer"

    const-string v5, "Starting DisplayEffect Service."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Window Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 680
    new-instance v4, Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-direct {v4, v3}, Lcom/android/server/displayeffect/DisplayEffectService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->displayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    .line 681
    const-string v4, "display_effect"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->displayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    if-eqz v74, :cond_2a

    .line 688
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_4
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .line 710
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v97, 0x0

    .line 711
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v92, 0x0

    .line 712
    .local v92, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .line 713
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v107, 0x0

    .line 714
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v77, 0x0

    .line 715
    .local v77, "location":Lcom/android/server/LocationManagerService;
    const/16 v53, 0x0

    .line 716
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 717
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v79, 0x0

    .line 718
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v40, 0x0

    .line 719
    .local v40, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v81, 0x0

    .line 722
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 724
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Bluetooth Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 730
    new-instance v71, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 731
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v4, "input_method"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_43

    move-object/from16 v70, v71

    .line 737
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Input Method Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 743
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 751
    :cond_0
    :goto_7
    :try_start_c
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 756
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 757
    if-nez v62, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 764
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 766
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Accessibility Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 770
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v85

    .line 780
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 783
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V

    .line 785
    const/16 v4, 0x5a

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    .line 786
    const-string v4, "SystemServer"

    const-string v5, "bootPrecent = 90 "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 793
    :goto_a
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040392

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_42

    .line 800
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_30

    .line 801
    if-nez v60, :cond_3

    .line 803
    :try_start_10
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Mount Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 809
    new-instance v80, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 810
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_11
    const-string v4, "lock_settings"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_41

    move-object/from16 v79, v80

    .line 815
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 819
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 826
    :cond_3
    if-nez v63, :cond_4

    .line 828
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:LockSettingsService  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 834
    new-instance v98, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 835
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string v4, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_40

    move-object/from16 v97, v98

    .line 841
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_d
    if-nez v60, :cond_5

    .line 843
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Status Bar  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 849
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 856
    :cond_5
    :goto_e
    if-nez v58, :cond_6

    .line 858
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Clipboard Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 864
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 865
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 871
    :cond_6
    :goto_f
    if-nez v60, :cond_7

    .line 873
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:NetworkManagement Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 879
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 880
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_17
    const-string v4, "textservices"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3f

    move-object/from16 v101, v102

    .line 886
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_10
    if-nez v58, :cond_2f

    .line 888
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Text Service Manager Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 894
    new-instance v88, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 895
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_19
    const-string v4, "network_score"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3e

    move-object/from16 v87, v88

    .line 901
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Network Score Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 907
    new-instance v89, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v89

    move-object/from16 v1, v35

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 908
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v89, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string v4, "netstats"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3d

    move-object/from16 v6, v89

    .line 914
    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:NetworkStats Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 920
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 924
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3c

    .line 929
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 938
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 942
    :cond_9
    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:NetworkPolicy Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 948
    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 950
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v49, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1f
    const-string v4, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 951
    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 952
    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3b

    move-object/from16 v48, v49

    .line 958
    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Connectivity Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 964
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v96

    .line 965
    const-string v4, "servicediscovery"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 972
    :goto_15
    if-nez v60, :cond_a

    .line 974
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Network Service Discovery Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 980
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 982
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_12

    .line 994
    :cond_a
    :goto_16
    if-eqz v85, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_b

    .line 996
    :try_start_22
    invoke-interface/range {v85 .. v85}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_2f

    .line 1002
    :cond_b
    :goto_17
    if-eqz v33, :cond_c

    .line 1003
    :try_start_23
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 1009
    :cond_c
    :goto_18
    if-eqz v52, :cond_d

    .line 1010
    :try_start_24
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 1015
    :cond_d
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1016
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v92

    .line 1018
    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1022
    if-nez v57, :cond_e

    .line 1024
    :try_start_25
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:UpdateLock Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1030
    new-instance v78, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_15

    .line 1031
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    :try_start_26
    const-string v4, "location"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_3a

    move-object/from16 v77, v78

    .line 1037
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Location Manager  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1043
    new-instance v54, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 1044
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v54, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_28
    const-string v4, "country_detector"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_39

    move-object/from16 v53, v54

    .line 1050
    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1b
    if-nez v60, :cond_f

    .line 1052
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Country Detector  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1058
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 1066
    :cond_f
    :goto_1c
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Search Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1072
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 1078
    :goto_1d
    if-nez v60, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1081
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:DropBox Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1087
    new-instance v108, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 1088
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2c
    const-string v4, "wallpaper"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_38

    move-object/from16 v107, v108

    .line 1095
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1e
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Wallpaper Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1101
    new-instance v43, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 1102
    .end local v42    # "audioService":Lcom/android/server/audio/AudioService;
    .local v43, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2e
    const-string v4, "audio"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_37

    move-object/from16 v42, v43

    .line 1108
    .end local v43    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v42    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1f
    const-string v4, "persist.sys.usb.factorymode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1110
    .local v61, "disableSetupWizard":Ljava/lang/String;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "factorymode : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v4, "true"

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "device_provisioned"

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1117
    :cond_11
    const/16 v4, 0x64

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    .line 1118
    const-string v4, "SystemServer"

    const-string v5, "bootPrecent = 100 "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    if-nez v60, :cond_12

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1125
    :cond_12
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .line 1133
    :goto_20
    if-nez v60, :cond_16

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1139
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1143
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1147
    :cond_15
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Audio Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1154
    new-instance v95, Lcom/android/server/SerialService;

    move-object/from16 v0, v95

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .line 1155
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .local v95, "serial":Lcom/android/server/SerialService;
    :try_start_31
    const-string v4, "serial"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_36

    move-object/from16 v94, v95

    .line 1162
    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    :cond_16
    :goto_21
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Karaoke Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v76, Landroid/media/KaraokeService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Landroid/media/KaraokeService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 1164
    .end local v75    # "karaokeService":Landroid/media/KaraokeService;
    .local v76, "karaokeService":Landroid/media/KaraokeService;
    :try_start_33
    const-string v4, "karaoke"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_35

    move-object/from16 v75, v76

    .line 1169
    .end local v76    # "karaokeService":Landroid/media/KaraokeService;
    .restart local v75    # "karaokeService":Landroid/media/KaraokeService;
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1173
    if-nez v60, :cond_1a

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1178
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1182
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1186
    :cond_19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1187
    const-string v4, "SystemServer"

    const-string v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1193
    :cond_1a
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Serial Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1199
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 1209
    :goto_23
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:DiskStats Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1215
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 1221
    :goto_24
    if-nez v58, :cond_1b

    if-nez v59, :cond_1b

    .line 1223
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:SamplingProfiler Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1229
    new-instance v91, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v90, v91

    .line 1236
    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_25
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:NetworkTimeUpdateService  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1242
    new-instance v46, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 1243
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v46, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_38
    const-string v4, "commontime_management"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_34

    move-object/from16 v45, v46

    .line 1248
    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_26
    if-nez v58, :cond_1c

    .line 1250
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 1257
    :cond_1c
    :goto_27
    if-nez v60, :cond_1d

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1262
    :cond_1d
    if-nez v60, :cond_1e

    if-nez v55, :cond_1e

    .line 1264
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:CommonTimeManagementService  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1270
    new-instance v41, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .line 1271
    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v41, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3b
    const-string v4, "assetatlas"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_33

    move-object/from16 v40, v41

    .line 1277
    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_28
    if-nez v60, :cond_1f

    .line 1278
    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1282
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1286
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1294
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1298
    :cond_22
    if-nez v60, :cond_23

    .line 1300
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Assets Atlas Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1306
    new-instance v82, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 1307
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string v4, "media_router"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_32

    move-object/from16 v81, v82

    .line 1312
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v69

    check-cast v69, Lcom/android/server/fingerprint/FingerprintService;

    .line 1316
    .local v69, "fpserver":Lcom/android/server/fingerprint/FingerprintService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/ExtensionFingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v67

    check-cast v67, Lcom/android/server/fingerprint/ExtensionFingerprintService;

    .line 1318
    .local v67, "exfpserver":Lcom/android/server/fingerprint/ExtensionFingerprintService;
    const-string v4, "SystemServer"

    const-string v5, "new FingerprintMediator"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v68, Lcom/android/server/fingerprint/FingerprintMediator;

    invoke-direct/range {v68 .. v69}, Lcom/android/server/fingerprint/FingerprintMediator;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1320
    .local v68, "fpMediator":Lcom/android/server/fingerprint/FingerprintMediator;
    invoke-virtual/range {v67 .. v68}, Lcom/android/server/fingerprint/ExtensionFingerprintService;->setMediator(Lcom/android/server/fingerprint/FingerprintMediator;)V

    .line 1321
    move-object/from16 v0, v69

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->setMediator(Lcom/android/server/fingerprint/FingerprintMediator;)V

    .line 1323
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Media Router Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1329
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 1336
    .end local v67    # "exfpserver":Lcom/android/server/fingerprint/ExtensionFingerprintService;
    .end local v68    # "fpMediator":Lcom/android/server/fingerprint/FingerprintMediator;
    .end local v69    # "fpserver":Lcom/android/server/fingerprint/FingerprintService;
    :cond_23
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1342
    .end local v61    # "disableSetupWizard":Ljava/lang/String;
    :goto_2b
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "AppPcService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:BackgroundDexOptService  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1348
    new-instance v39, Lcom/android/server/am/AppPcService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 1349
    .end local v38    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v39, "appPcService":Lcom/android/server/am/AppPcService;
    :try_start_40
    const-string v4, "lenovopermission"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_31

    move-object/from16 v38, v39

    .line 1360
    .end local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v38    # "appPcService":Lcom/android/server/am/AppPcService;
    :goto_2c
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "AppIconThemeServices"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:AppPcService  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 1366
    new-instance v37, Ltheme/content/res/AppIconThemeServices;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Ltheme/content/res/AppIconThemeServices;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 1367
    .end local v36    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .local v37, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    :try_start_42
    const-string v4, "AppIconThemeServices"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_30

    move-object/from16 v36, v37

    .line 1375
    .end local v37    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v36    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    :goto_2d
    if-nez v60, :cond_24

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1381
    :cond_24
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v93

    .line 1382
    .local v93, "safeMode":Z
    if-eqz v93, :cond_2e

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1385
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1392
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v84

    .end local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v84, Lcom/android/server/MmsServiceBroker;

    .line 1397
    .restart local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_43
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 1402
    :goto_2f
    if-eqz v79, :cond_25

    .line 1404
    :try_start_44
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 1411
    :cond_25
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1416
    :try_start_45
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2a

    .line 1421
    :goto_31
    if-eqz v93, :cond_26

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1428
    :cond_26
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .line 1429
    .local v47, "config":Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1430
    .local v83, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/view/WindowManager;

    .line 1431
    .local v106, "w":Landroid/view/WindowManager;
    invoke-interface/range {v106 .. v106}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1432
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1436
    :try_start_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    .line 1442
    :goto_32
    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 1449
    :goto_33
    :try_start_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v93

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 1457
    :goto_34
    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->displayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-virtual {v4}, Lcom/android/server/displayeffect/DisplayEffectService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2e

    .line 1464
    :goto_35
    move-object v14, v7

    .line 1465
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v6

    .line 1466
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v2

    .line 1467
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v48

    .line 1468
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v87

    .line 1469
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v20, v107

    .line 1470
    .local v20, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v21, v70

    .line 1471
    .local v21, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v23, v77

    .line 1472
    .local v23, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v24, v53

    .line 1473
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v90

    .line 1474
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v45

    .line 1475
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v101

    .line 1476
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v22, v97

    .line 1477
    .local v22, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v40

    .line 1478
    .local v28, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v29, v72

    .line 1479
    .local v29, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v30, v99

    .line 1480
    .local v30, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v81

    .line 1481
    .local v31, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v42

    .line 1483
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v19, v75

    .line 1485
    .local v19, "karaokeServiceF":Landroid/media/KaraokeService;
    move-object/from16 v32, v84

    .line 1488
    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v38

    .line 1493
    .local v10, "appPcServiceF":Lcom/android/server/am/AppPcService;
    move-object/from16 v11, v36

    .line 1502
    .local v11, "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v12, v3

    invoke-direct/range {v8 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/am/AppPcService;Ltheme/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Landroid/media/KaraokeService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1690
    return-void

    .line 593
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v11    # "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "karaokeServiceF":Landroid/media/KaraokeService;
    .end local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "safeMode":Z
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v106    # "w":Landroid/view/WindowManager;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v64

    .line 594
    .local v64, "e":Ljava/lang/Throwable;
    :goto_36
    :try_start_4a
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_1

    goto/16 :goto_0

    .line 705
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .line 706
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v64, "e":Ljava/lang/RuntimeException;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_37
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 603
    .end local v64    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 659
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :cond_28
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 689
    :cond_2a
    :try_start_4b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 690
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 705
    :catch_2
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_37

    .line 691
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2b
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 693
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 694
    :cond_2c
    if-eqz v56, :cond_2d

    .line 695
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 697
    :cond_2d
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sys_ser:Starting DisplayEffect Service  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/SystemServer;->mStartTime:J

    move-wide/from16 v112, v0

    sub-long v8, v8, v112

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ms"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/SystemServer;->mStartTime:J

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_2

    goto/16 :goto_4

    .line 732
    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v64

    .line 733
    .local v64, "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 745
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v64

    .line 746
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 752
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v64

    .line 753
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 772
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v64

    .line 773
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 788
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v64

    .line 789
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 811
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v64

    .line 812
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 836
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v64

    .line 837
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 851
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v64

    .line 852
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 866
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v64

    .line 867
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 881
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v64

    .line 882
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 896
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v64

    .line 897
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 909
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v64

    .line 910
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 925
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v64

    move-object/from16 v2, v86

    .line 926
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 953
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v64

    .line 954
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 967
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v64

    .line 968
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 984
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v64

    .line 985
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1004
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v64

    .line 1005
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1011
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v64

    .line 1012
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1032
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v64

    .line 1033
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1045
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v64

    .line 1046
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1060
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v64

    .line 1061
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1074
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v64

    .line 1075
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1089
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v64

    .line 1090
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1103
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v64

    .line 1104
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1129
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v61    # "disableSetupWizard":Ljava/lang/String;
    :catch_1b
    move-exception v64

    .line 1130
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1156
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v64

    .line 1157
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 1165
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v64

    .line 1166
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting Karaoke Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1200
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v64

    .line 1201
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1217
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v64

    .line 1218
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1230
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v64

    .line 1231
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1244
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v64

    .line 1245
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1252
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v64

    .line 1253
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1272
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v64

    .line 1273
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1308
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v64

    .line 1309
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1330
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v67    # "exfpserver":Lcom/android/server/fingerprint/ExtensionFingerprintService;
    .restart local v68    # "fpMediator":Lcom/android/server/fingerprint/FingerprintMediator;
    .restart local v69    # "fpserver":Lcom/android/server/fingerprint/FingerprintService;
    :catch_25
    move-exception v64

    .line 1331
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1350
    .end local v61    # "disableSetupWizard":Ljava/lang/String;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v67    # "exfpserver":Lcom/android/server/fingerprint/ExtensionFingerprintService;
    .end local v68    # "fpMediator":Lcom/android/server/fingerprint/FingerprintMediator;
    .end local v69    # "fpserver":Lcom/android/server/fingerprint/FingerprintService;
    :catch_26
    move-exception v64

    .line 1351
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting AppPcService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1368
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v64

    .line 1369
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting appIconThemeServices"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1388
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v93    # "safeMode":Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2e

    .line 1398
    :catch_28
    move-exception v64

    .line 1399
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1405
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v64

    .line 1406
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1417
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v64

    .line 1418
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1437
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v47    # "config":Landroid/content/res/Configuration;
    .restart local v83    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v106    # "w":Landroid/view/WindowManager;
    :catch_2b
    move-exception v64

    .line 1438
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1443
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v64

    .line 1444
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1450
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v64

    .line 1451
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1458
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v64

    .line 1459
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Effect Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 997
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v106    # "w":Landroid/view/WindowManager;
    :catch_2f
    move-exception v4

    goto/16 :goto_17

    .line 1368
    .end local v36    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v37    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    :catch_30
    move-exception v64

    move-object/from16 v36, v37

    .end local v37    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v36    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    goto :goto_4a

    .line 1350
    .end local v38    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    :catch_31
    move-exception v64

    move-object/from16 v38, v39

    .end local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v38    # "appPcService":Lcom/android/server/am/AppPcService;
    goto :goto_49

    .line 1308
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v61    # "disableSetupWizard":Ljava/lang/String;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_32
    move-exception v64

    move-object/from16 v81, v82

    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_48

    .line 1272
    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_33
    move-exception v64

    move-object/from16 v40, v41

    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_47

    .line 1244
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_34
    move-exception v64

    move-object/from16 v45, v46

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_46

    .line 1165
    .end local v75    # "karaokeService":Landroid/media/KaraokeService;
    .restart local v76    # "karaokeService":Landroid/media/KaraokeService;
    :catch_35
    move-exception v64

    move-object/from16 v75, v76

    .end local v76    # "karaokeService":Landroid/media/KaraokeService;
    .restart local v75    # "karaokeService":Landroid/media/KaraokeService;
    goto/16 :goto_45

    .line 1156
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "serial":Lcom/android/server/SerialService;
    :catch_36
    move-exception v64

    move-object/from16 v94, v95

    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_44

    .line 1103
    .end local v42    # "audioService":Lcom/android/server/audio/AudioService;
    .end local v61    # "disableSetupWizard":Ljava/lang/String;
    .restart local v43    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_37
    move-exception v64

    move-object/from16 v42, v43

    .end local v43    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v42    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_43

    .line 1089
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_38
    move-exception v64

    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_42

    .line 1045
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_39
    move-exception v64

    move-object/from16 v53, v54

    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_41

    .line 1032
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    :catch_3a
    move-exception v64

    move-object/from16 v77, v78

    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_40

    .line 953
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3b
    move-exception v64

    move-object/from16 v48, v49

    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 925
    :catch_3c
    move-exception v64

    goto/16 :goto_3e

    .line 909
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3d
    move-exception v64

    move-object/from16 v6, v89

    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3d

    .line 896
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3e
    move-exception v64

    move-object/from16 v87, v88

    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3c

    .line 881
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3f
    move-exception v64

    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3b

    .line 836
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_40
    move-exception v64

    move-object/from16 v97, v98

    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3a

    .line 811
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_41
    move-exception v64

    move-object/from16 v79, v80

    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_39

    .line 797
    :catch_42
    move-exception v4

    goto/16 :goto_b

    .line 732
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_43
    move-exception v64

    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_38

    .line 705
    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_44
    move-exception v64

    goto/16 :goto_37

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v64

    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_37

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_37

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_47
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .line 593
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_49
    move-exception v64

    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_2f
    move-object/from16 v2, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_30
    move-object/from16 v2, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2b
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1694
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1697
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1698
    return-void
.end method


# virtual methods
.method public addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 225
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 228
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
